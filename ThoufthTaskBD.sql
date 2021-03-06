PGDMP                          w            ThoufthTaskBD    10.8    10.8                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16393    ThoufthTaskBD    DATABASE     �   CREATE DATABASE "ThoufthTaskBD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE "ThoufthTaskBD";
             ThoufthTaskBD    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             ThoufthTaskBD    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  ThoufthTaskBD    false    3                       0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO "ThoufthTaskBD";
                  ThoufthTaskBD    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16412    content    TABLE     %  CREATE TABLE public.content (
    content_id integer NOT NULL,
    title text NOT NULL,
    "titleShow" boolean NOT NULL,
    show boolean NOT NULL,
    type name NOT NULL,
    text text,
    size smallint,
    border boolean,
    src text,
    align name,
    alt text,
    "videoId" name
);
    DROP TABLE public.content;
       public         ThoufthTaskBD    false    3            �            1259    16410    content_id_seq    SEQUENCE     �   CREATE SEQUENCE public.content_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.content_id_seq;
       public       ThoufthTaskBD    false    197    3                       0    0    content_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.content_id_seq OWNED BY public.content.content_id;
            public       ThoufthTaskBD    false    196            �            1259    16432    menu    TABLE     ~   CREATE TABLE public.menu (
    menu_id integer NOT NULL,
    title name NOT NULL,
    href text,
    show boolean NOT NULL
);
    DROP TABLE public.menu;
       public         ThoufthTaskBD    false    3            �            1259    16430    menu_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.menu_id_seq;
       public       ThoufthTaskBD    false    3    199                       0    0    menu_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.menu_id_seq OWNED BY public.menu.menu_id;
            public       ThoufthTaskBD    false    198            �            1259    16445    users    TABLE     �   CREATE TABLE public.users (
    user_id integer NOT NULL,
    username name NOT NULL,
    password text NOT NULL,
    admin boolean NOT NULL,
    session_id text
);
    DROP TABLE public.users;
       public         ThoufthTaskBD    false    3            �            1259    16443    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       ThoufthTaskBD    false    201    3                       0    0    users_id_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.user_id;
            public       ThoufthTaskBD    false    200            ~
           2604    16415    content content_id    DEFAULT     p   ALTER TABLE ONLY public.content ALTER COLUMN content_id SET DEFAULT nextval('public.content_id_seq'::regclass);
 A   ALTER TABLE public.content ALTER COLUMN content_id DROP DEFAULT;
       public       ThoufthTaskBD    false    196    197    197            
           2604    16435    menu menu_id    DEFAULT     g   ALTER TABLE ONLY public.menu ALTER COLUMN menu_id SET DEFAULT nextval('public.menu_id_seq'::regclass);
 ;   ALTER TABLE public.menu ALTER COLUMN menu_id DROP DEFAULT;
       public       ThoufthTaskBD    false    199    198    199            �
           2604    16448    users user_id    DEFAULT     i   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public       ThoufthTaskBD    false    201    200    201                      0    16412    content 
   TABLE DATA               }   COPY public.content (content_id, title, "titleShow", show, type, text, size, border, src, align, alt, "videoId") FROM stdin;
    public       ThoufthTaskBD    false    197   �                 0    16432    menu 
   TABLE DATA               :   COPY public.menu (menu_id, title, href, show) FROM stdin;
    public       ThoufthTaskBD    false    199   w!                 0    16445    users 
   TABLE DATA               O   COPY public.users (user_id, username, password, admin, session_id) FROM stdin;
    public       ThoufthTaskBD    false    201   �!                  0    0    content_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.content_id_seq', 2, true);
            public       ThoufthTaskBD    false    196                       0    0    menu_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.menu_id_seq', 10, true);
            public       ThoufthTaskBD    false    198                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 23, true);
            public       ThoufthTaskBD    false    200            �
           2606    16440    content content_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.content
    ADD CONSTRAINT content_pkey PRIMARY KEY (content_id);
 >   ALTER TABLE ONLY public.content DROP CONSTRAINT content_pkey;
       public         ThoufthTaskBD    false    197            �
           2606    16442    menu menu_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_pkey PRIMARY KEY (menu_id);
 8   ALTER TABLE ONLY public.menu DROP CONSTRAINT menu_pkey;
       public         ThoufthTaskBD    false    199            �
           2606    16453    users users_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id, username);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         ThoufthTaskBD    false    201    201            �           826    16395    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     T   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES  TO "ThoufthTaskBD";
                  postgres    false               �  x��T�n�@>�����H�Ҵ*��KOH�����`����&�?jr*����J} ���W�}�ά��*D���3;�}���:���o9~Ү�*�r��J<2
�a
���^Vכn��L�e��i�4ި�d�d�e^�s���j�~����R/p��N���p�;���L*�'��k�SQN��o���啜2���0
��_�Vt �����0�o���e��J�mXy�ƨ)� �u�����.��ᵄ;F2n�!�ё���.����/�`..wI�`8K9L�%��L�7�D��賆��g�g��$A0b�$=1�a��1��t$
��j8D�&æ1Ja��ȍ�&0Ǚ�,ϳ�sd��'C�}� �+7��bC!�"��2��. ܩ��:~�b\�F(��Ā��!�!����VY\}��bL�R��(�ڵX��� ��˜"���<���k���C	��ܒ�<�]�^�y�7��a�l//7A��dI�4�S|~�q����b�_��TY�@�d�̺X���3�֨�l/m��-3���)��r�3S��<GY�7{T�v�Dg���Ng+>��w�`��(ڦœx�oǿ�3�i�<�t��j5�2��Xg����b�/�v[/޿KZ"��f��         u   x�3�0�¾�/�\��7]�p�����/���/-N-*�,�2���LI�T�L�2估��>��}���%�@1#��.츰�(ZT
5�0��&�ʋ����%�E@�=... ��6+         �   x�E�=�0�g�0(u'=A7����Il@� ����*�����v9���G�qo"�)���f&n��ι��tp��q��u�(K��#QQTI^\��Ѯ�^c�PME��cO���e�Q�����e��,�jY�v����Tj��=r0�����7s     