import psycopg2
import streamlit as st
from PIL import Image
import streamlit.components.v1 as components
from PIL import Image
import pandas as pd




i_prefix = 'MD/Images/Songs/'
s_prefix = 'MD/Songs/'

p_prefix = 'MD/Images/Podcasts/'
e_prefix = 'MD/Podcasts/'

b_prefix = 'MD/Images/Artists/'

a_prefix = 'MD/Images/Albums/'
connection = psycopg2.connect(host='localhost',
                          port='5432',
                          database='ksv2013')

cursor = connection.cursor()
    # Print PostgreSQL Connection properties
# print ( connection.get_dsn_parameters(),"\n")
st.markdown('<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">', unsafe_allow_html=True)
def run_query(query):
    with connection.cursor() as cur:
        cur.execute(query)
        return cur.fetchall()

def insight():
    js = "window.open('https://www.streamlit.io/')"  # New tab or window
    # js = "window.location.href = 'https://www.streamlit.io/'"  # Current tab
    q = "select genre,count(*) as Num from song_chronicle C, song S where C.id='1001' and C.song_id=S.song_id group by S.genre order by Num DESC;"
    results = run_query(q)
    st.markdown('<h3>Number of songs listened in each genre</h3>', unsafe_allow_html=True)
    
    df = pd.DataFrame(results, columns=['Genre', 'Number of Songs listened'])

    df.index+=1
    st.table(df)
    # st.markdown('Your favorite genre: f"{results[0][0]}", unsafe_allow_html=True)
    st.markdown(f"<h4>Your favorite genre:<h4>{results[0][0]}", unsafe_allow_html=True)

    # st.write(results)
    recently_played = st.sidebar.button('Home',
                            key='RecP')
    st.markdown('<h3>Number of times you played songs</h3>', unsafe_allow_html=True)
    
    q1 = "select S.name, C.num_instance from song_chronicle C, song S where C.song_id=S.song_id and id='1001' order by num_instance DESC;"
    rs = run_query(q1)
    df = pd.DataFrame(rs, columns=['Song', 'Number of times played'])

    df.index+=1
    st.table(df)
    
    st.stop()

    
if st.sidebar.button('Playlist'):
    js = "window.open('https://www.streamlit.io/')"  # New tab or window
    js = "window.location.href = 'https://www.streamlit.io/'"  # Current tab
    
    #  div = Div(text=html)

    rows = run_query("SELECT * from user_create_playlist;")
    for row in rows:
        id = row[2]
        i = i_prefix+str(id)+'/'+str(id)+'.png'
        img = Image.open(i)
        song = s_prefix+str(id)+'/'+'/1.wav'
        st.image(img, width = None)
        audio_file = open(song, 'rb')   
        audio_bytes = audio_file.read()
        st.audio(audio_bytes)
    
    

    recently_played = st.sidebar.button('Home',
                            key='RecP')
    st.stop()
    
# st.title("")
def add_pl(id: int, pl_name: str):
    id_u = 1001
    q1= "select * from user_create_playlist U where U.song_id = %s;"
    cursor.execute(q1, (id,))
    res = cursor.fetchone()
    if (res is None):
        q = "Insert into user_create_playlist (name, user_id,song_id) values (%s,%s,%s)"  
        cursor.execute(q, (pl_name,id_u,id,))
        connection.commit()
    else:
        st.write("Already added to playlist")

def song_play(song: str):
    js = "window.open('https://www.streamlit.io/')"  # New tab or window
    js = "window.location.href = 'https://www.streamlit.io/'"  # Current tab
    audio_file = open(song, 'rb')
    audio_bytes = audio_file.read()
    st.audio(audio_bytes)
    recently_played = st.sidebar.button('Home',
                            key='RecP')
    st.stop()
                            

def album_click(id: int):
    js = "window.open('https://www.streamlit.io/')"  # New tab or window
    js = "window.location.href = 'https://www.streamlit.io/'"  # Current tab
    recently_played = st.sidebar.button('Home',
                            key='RecP')
    q1= "select S.song_id, S.name from album_has_songs A, Song S  where S.song_id = A.song_id and A.album_id = %s;"
    cursor.execute(q1, (id,))
    res = cursor.fetchall()
    for r in res:
        id = r[0]
        i = i_prefix+str(id)+'/'+str(id)+'.png'
        img = Image.open(i)
        song = s_prefix+str(id)+'/'+'/1.wav'
        st.image(img, width = None)
        st.button(r[1] , key=r[1],
        on_click=song_play, args=(song,))
    st.stop()


def band_click(id: int):
    js = "window.open('https://www.streamlit.io/')"  # New tab or window
    js = "window.location.href = 'https://www.streamlit.io/'"  # Current tab

    q1 = "SELECT * from band_create_album where band_id=%s;"
    cursor.execute(q1, (id,))
    res = cursor.fetchall()
    # st.markdown(f'<h3> {res[2]} </h3>', unsafe_allow_html=True)
    # colss = st.columns(3)
    recently_played = st.sidebar.button('Home',
                            key='RecP')

    for row in res:
        alb_i = a_prefix+str(row[0])+'/'+str(row[0])+'.jpeg'
        img_a = Image.open(alb_i)
        st.image(img_a, width = None)
        st.button(row[6], key=row[6],
        on_click=album_click, args=(row[0],))



    st.stop()


def pod_click(id: int):
    js = "window.open('https://www.streamlit.io/')"  # New tab or window
    js = "window.location.href = 'https://www.streamlit.io/'"  # Current tab
    i = p_prefix+'/'+str(id)+'/'+str(id)+'.jpeg'
    img = Image.open(i)
    st.image(img, width = None)
    q1 = "SELECT * from channel_record_podcast where channel_id=%s;"
    cursor.execute(q1, (id,))
    res = cursor.fetchall()
    st.markdown('<h3>Podcast-Name    Description       File</h3>', unsafe_allow_html=True)
    colss = st.columns(3)
    recently_played = st.sidebar.button('Home',
                            key='RecP')

    for row in res:
        with cols[0]:
            st.write(row[0])
        with cols[1]:
            st.write(row[2])
        with cols[2]:
            p = e_prefix+str(row[5])+'/'+str(row[1])+'.wav'
            audio_file = open(p, 'rb')   
            audio_bytes = audio_file.read()
            st.audio(audio_bytes)

    st.stop()


def audio_click(song: str, id: int):
    js = "window.open('https://www.streamlit.io/')"  # New tab or window
    js = "window.location.href = 'https://www.streamlit.io/'"  # Current tab
    recently_played = st.sidebar.button('Home',
                            key='RecP')
    q1 = "select * from song where song_id = %s;"
    cursor.execute(q1, (id,))
    res = cursor.fetchall()
    st.markdown(f'<h3>Playing: {res[0][4]}</h3>', unsafe_allow_html=True)
    st.markdown(f'<h3>Singer: {res[0][2]}</h3>', unsafe_allow_html=True)
    st.markdown(f'<h3>Composer: {res[0][1]}</h3>', unsafe_allow_html=True)
    st.markdown(f'<h3>Genre: {res[0][7]}</h3>', unsafe_allow_html=True)
    st.markdown(f'<h3>Lyrics {res[0][5]}</h3>', unsafe_allow_html=True)
    
    audio_file = open(song, 'rb')
    audio_bytes = audio_file.read()
    st.audio(audio_bytes)
    pl_name='Playlist 101'
    st.button("Add to Playlist",on_click=add_pl, args=(id,pl_name))

    q2 = "select num_instance from song_chronicle where song_id = %s;"
    cursor.execute(q2, (id,))
    res = cursor.fetchall()

    no_instance = res[0][0]
    no_instance +=1
    q3 = "update song_chronicle set num_instance=%s where song_id = %s and id='1001';"  
    cursor.execute(q3, (no_instance,id,))
    connection.commit()





    st.stop()

# def subscription(id: int):
#     user_i = '1001'
#     q1= "select * from user_subscribe_channel U where U.user_id = %s and U.channel_id = %s;"
#     cursor.execute(q1, (user_i,id,))
#     res = cursor.fetchone()
#     if (res is None):
#         q = "Insert into user_subscribe_podcast (user_id,channel_id) values (%s,%s)"  
#         cursor.execute(q, (user_id_u,id,))
#         connection.commit()
#     else:
#         st.write("Already added to playlist")


def search_podcast(user_search: str):
    """ Callback function during adding a new project. """
    # display a warning if the user entered an existing name
    # st.write(user_search)
    js = "window.open('https://www.streamlit.io/')"  # New tab or window
    js = "window.location.href = 'https://www.streamlit.io/'"  # Current tab
    st.markdown(f'{user_search}', unsafe_allow_html=True)
    
    rows = run_query("select * from channel where channel_name ilike'"+user_search+"';")
    recently_played = st.sidebar.button('Home',
                            key='RecP')
    if len(rows) == 0:
        st.write("Try clicking Search Podcasts again")
        st.write(len(rows))
    else:
        result_id = rows[0][0]
        id = result_id
        i = p_prefix+'/'+str(id)+'/'+str(id)+'.jpeg'
        img = Image.open(i)
        st.image(img, width = None)
        q1 = "SELECT * from channel_record_podcast where channel_id=%s;"
        cursor.execute(q1, (result_id,))
        res = cursor.fetchall()
        st.markdown('<h3>Podcast-Name    Description       File</h3>', unsafe_allow_html=True)
        colss = st.columns(3)

        for row in res:
            with cols[0]:
                st.write(row[0])
            with cols[1]:
                st.write(row[2])
            with cols[2]:
                p = e_prefix+'/'+str(row[5])+'/'+str(row[1])+'.wav'
                audio_file = open(p, 'rb')   
                audio_bytes = audio_file.read()
                st.audio(audio_bytes)
        
        st.stop()
        # df = pd.DataFrame(res, columns=['podcast_name' , 'podcast_id' ,'description' ,'release_date' ,'duration','channel_id'])
        # df.index +=1

        # df.insert(6, "Podcast", [], True)
        
        # st.table(df)
 

def submit_search(user_search: str):
    """ Callback function during adding a new project. """
    # display a warning if the user entered an existing name
    # st.write(user_search)
    
    rows = run_query("SELECT * from song where name ilike'"+user_search+"';")
    for row in rows:
        id = row[0]
        st.markdown(f'<h3>{row[4]}</h3>', unsafe_allow_html=True)
        st.markdown(f'<h3>Genre: {row[7]}</h3>', unsafe_allow_html=True)
        st.markdown(f'<h3>Singer: {row[2]}</h3>', unsafe_allow_html=True)
        i = i_prefix+str(id)+'/'+str(id)+'.png'
        img = Image.open(i)
        img = img.resize((300,300),Image.ANTIALIAS)
        song = s_prefix+str(id)+'/'+'1.wav'
        st.image(img, width = None)
        audio_file = open(song, 'rb')
        audio_bytes = audio_file.read()
        st.audio(audio_bytes)
    


st.markdown('<h3>Top picks for you...</h3>', unsafe_allow_html=True)

col1, col2 = st.columns(2)
cols = st.columns(5)


# results = run_query("SELECT * from song limit 5;")
results = run_query("select * from song_chronicle C , Song S where C.id = '1001' and S.song_id=C.song_id order by C.num_instance DESC limit 5;")

with cols[0]:
    id = results[0][0]
    i = i_prefix+str(id)+'/'+str(id)+'.png'
    img = Image.open(i)
    img = img.resize((500,500),Image.ANTIALIAS)
    song = s_prefix+str(id)+'/'+'1.wav'
    st.image(img, width = None)
    st.button(results[0][7] , key=results[0][7],
    on_click=audio_click, args=(song, id))

    
with cols[1]:
    id = results[1][0]
    i = i_prefix+str(id)+'/'+str(id)+'.png'
    img = Image.open(i)
    img = img.resize((500,500),Image.ANTIALIAS)
    song = s_prefix+str(id)+'/'+'1.wav'
    st.image(img, width = None)
    st.button(results[1][7] , key=results[1][7],
    on_click=audio_click, args=(song, id))
 
with cols[2]:
    id = results[2][0]
    i = i_prefix+str(id)+'/'+str(id)+'.png'
    img = Image.open(i)
    img = img.resize((500,500),Image.ANTIALIAS)
    song = s_prefix+str(id)+'/'+'1.wav'
    st.image(img, width = None)
    st.button(results[2][7] , key=results[2][7],
    on_click=audio_click, args=(song, id,))

with cols[3]:
    id = results[3][0]
    i = i_prefix+str(id)+'/'+str(id)+'.png'
    img = Image.open(i)
    img = img.resize((500,500),Image.ANTIALIAS)
    song = s_prefix+str(id)+'/'+'1.wav'
    st.image(img, width = None)
    st.button(results[3][7] , key=results[3][7],
    on_click=audio_click, args=(song, id))

with cols[4]:
    id = results[4][0]
    i = i_prefix+str(id)+'/'+str(id)+'.png'
    img = Image.open(i)
    img = img.resize((500,500),Image.ANTIALIAS)
    song = s_prefix+str(id)+'/'+'1.wav'
    st.image(img, width = None)
    st.button(results[4][7] , key=results[4][7],
    on_click=audio_click, args=(song,id ))


st.markdown('<h3>Music Band</h3>', unsafe_allow_html=True)
cob = st.columns(5)


results_p = run_query("SELECT * from band_create_album limit 5;")
with cob[0]:
    id = results_p[0][1]
    i = b_prefix+str(id)+'/'+str(id)+'.jpeg'
    img = Image.open(i)
    img = img.resize((500,500),Image.ANTIALIAS)
    st.image(img, width = None)
    
    st.button(results_p[0][3] , key=results_p[0][3],
    on_click=band_click, args=(results_p[0][1],))
   
with cob[1]:
    id = results_p[1][1]
    i =b_prefix+str(id)+'/'+str(id)+'.jpeg'
    img = Image.open(i)
    img = img.resize((500,500),Image.ANTIALIAS)
    st.image(img, width = None)
    st.button(results_p[1][3] , key=results_p[1][3],
    on_click=band_click, args=(results_p[1][1],))
 
with cob[2]:
    id = results_p[2][1]
    i = b_prefix+str(id)+'/'+str(id)+'.jpeg'
    img = Image.open(i)
    img = img.resize((500,500),Image.ANTIALIAS)
    st.image(img, width = None)
    st.button(results_p[2][3] , key=results_p[2][3],
    on_click=band_click, args=(results_p[2][1],))

with cob[3]:
    id = results_p[3][1]
    i = b_prefix+str(id)+'/'+str(id)+'.jpeg'
    img = Image.open(i)
    img = img.resize((500,500),Image.ANTIALIAS)
    st.image(img, width = None)
    st.button(results_p[3][3] , key=results_p[3][3],
    on_click=band_click, args=(results_p[3][1],))

with cob[4]:
    id = results_p[4][1]
    i = b_prefix+str(id)+'/'+str(id)+'.jpeg'
    img = Image.open(i)
    st.image(img, width = None)
    st.button(results_p[4][3] , key=results_p[4][3],
    on_click=band_click, args=(results_p[4][1],))
# Search box to search songs
def sub_p(id: int):

    id_u = str(1001)

    q1= "select * from user_subscribe_channel U where U.channel_id = %s and user_id like %s;"
    cursor.execute(q1, (id, id_u))
    res = cursor.fetchone()
    if (res is None):
        q = "Insert into user_subscribe_channel (user_id,channel_id) values (%s,%s)"  
        cursor.execute(q, (id_u,id,))
        connection.commit()
        st.write("Successfully subscribed")
    else:
        st.write("Already Subscribed")


st.markdown('<h3>Subscribed Podcast Channel</h3>', unsafe_allow_html=True)
co = st.columns(5)


results = run_query("SELECT C.channel_id, C.channel_name from channel C, user_subscribe_channel U where C.channel_id = U.channel_id and U.user_id = '1001';")

for r in results:
    id = r[0]
    i = p_prefix+str(id)+'/'+str(id)+'.jpeg'
    img = Image.open(i)
    img = img.resize((500,500),Image.ANTIALIAS)
    st.image(img, width = None)
    st.button(r[1] , key=r[1],
    on_click=pod_click, args=(r[0],))



def list_p():
    js = "window.open('https://www.streamlit.io/')"  # New tab or window
    js = "window.location.href = 'https://www.streamlit.io/'"  # Current tab
    recently_played = st.sidebar.button('Home',
                            key='RecP')
    rp = run_query("SELECT channel_id, channel_name from channel;")
    for r in rp:
        col1, col2 = st.columns(2)
        with col1: 
            st.markdown(f'<h3>{r[1]}</h3>', unsafe_allow_html=True)
        with col2:
            st.button("Subscribe",key=r[1],on_click=sub_p, args=(r[0],))

        
    st.stop()
    








user_query = st.sidebar.text_input('Look for Songs/Podcast here...',
                            key='search')

st.sidebar.button('Search Songs', key='search_button',
          on_click=submit_search, args=(user_query, ))

st.sidebar.button('Search Podcasts', key='search_podcast',
          on_click=search_podcast, args=(user_query, ))

Insights = st.sidebar.button('Insights',on_click=insight,
                            key='RecP')
podcast = st.sidebar.button('Podcast channels', on_click=list_p,
                            key='Pod')
