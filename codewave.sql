PGDMP     %                
    x         
   codewave_1    12.4    12.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    25562 
   codewave_1    DATABASE     �   CREATE DATABASE codewave_1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE codewave_1;
                postgres    false            �            1259    25594 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    25592    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    25604    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    25602    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    25586    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    25584    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    25612 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    25622    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    25620    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    25610    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    25630    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    25628 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    25690    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    25688    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    25576    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    25574    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    25565    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    25563    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    25721    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    25768    student_profiles_student    TABLE     �   CREATE TABLE public.student_profiles_student (
    id integer NOT NULL,
    username character varying(200) NOT NULL,
    student_listing_id_id integer NOT NULL
);
 ,   DROP TABLE public.student_profiles_student;
       public         heap    postgres    false            �            1259    25766    student_profiles_student_id_seq    SEQUENCE     �   CREATE SEQUENCE public.student_profiles_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.student_profiles_student_id_seq;
       public          postgres    false    226            �           0    0    student_profiles_student_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.student_profiles_student_id_seq OWNED BY public.student_profiles_student.id;
          public          postgres    false    225            �            1259    25750    teachers_classlisting    TABLE     �   CREATE TABLE public.teachers_classlisting (
    id integer NOT NULL,
    classname character varying(200) NOT NULL,
    topics character varying(200) NOT NULL,
    description text NOT NULL,
    teacherid_id integer NOT NULL
);
 )   DROP TABLE public.teachers_classlisting;
       public         heap    postgres    false            �            1259    25748    teachers_classlisting_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teachers_classlisting_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.teachers_classlisting_id_seq;
       public          postgres    false    224            �           0    0    teachers_classlisting_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.teachers_classlisting_id_seq OWNED BY public.teachers_classlisting.id;
          public          postgres    false    223            �            1259    25733    teachers_teacher    TABLE     k  CREATE TABLE public.teachers_teacher (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    username character varying(200) NOT NULL,
    description text NOT NULL,
    phone character varying(15) NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    hire_date timestamp with time zone NOT NULL
);
 $   DROP TABLE public.teachers_teacher;
       public         heap    postgres    false            �            1259    25731    teachers_teacher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teachers_teacher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.teachers_teacher_id_seq;
       public          postgres    false    222            �           0    0    teachers_teacher_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.teachers_teacher_id_seq OWNED BY public.teachers_teacher.id;
          public          postgres    false    221            �
           2604    25597    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    25607    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    25589    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    25615    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �
           2604    25625    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �
           2604    25633    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �
           2604    25693    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �
           2604    25579    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    25568    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    25771    student_profiles_student id    DEFAULT     �   ALTER TABLE ONLY public.student_profiles_student ALTER COLUMN id SET DEFAULT nextval('public.student_profiles_student_id_seq'::regclass);
 J   ALTER TABLE public.student_profiles_student ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �
           2604    25753    teachers_classlisting id    DEFAULT     �   ALTER TABLE ONLY public.teachers_classlisting ALTER COLUMN id SET DEFAULT nextval('public.teachers_classlisting_id_seq'::regclass);
 G   ALTER TABLE public.teachers_classlisting ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �
           2604    25736    teachers_teacher id    DEFAULT     z   ALTER TABLE ONLY public.teachers_teacher ALTER COLUMN id SET DEFAULT nextval('public.teachers_teacher_id_seq'::regclass);
 B   ALTER TABLE public.teachers_teacher ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �          0    25594 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   Y�       �          0    25604    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   v�       �          0    25586    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   ��       �          0    25612 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   �       �          0    25622    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   ��       �          0    25630    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   ��       �          0    25690    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   ��       �          0    25576    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   I�       �          0    25565    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   մ       �          0    25721    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   ȶ       �          0    25768    student_profiles_student 
   TABLE DATA           W   COPY public.student_profiles_student (id, username, student_listing_id_id) FROM stdin;
    public          postgres    false    226   ٸ       �          0    25750    teachers_classlisting 
   TABLE DATA           a   COPY public.teachers_classlisting (id, classname, topics, description, teacherid_id) FROM stdin;
    public          postgres    false    224   4�       �          0    25733    teachers_teacher 
   TABLE DATA           n   COPY public.teachers_teacher (id, name, username, description, phone, email, password, hire_date) FROM stdin;
    public          postgres    false    222   ֺ       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          postgres    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 19, true);
          public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 23, true);
          public          postgres    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
          public          postgres    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);
          public          postgres    false    202            �           0    0    student_profiles_student_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.student_profiles_student_id_seq', 22, true);
          public          postgres    false    225            �           0    0    teachers_classlisting_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.teachers_classlisting_id_seq', 7, true);
          public          postgres    false    223            �           0    0    teachers_teacher_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.teachers_teacher_id_seq', 7, true);
          public          postgres    false    221            �
           2606    25719    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            �
           2606    25646 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            �
           2606    25609 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            �
           2606    25599    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            �
           2606    25637 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            �
           2606    25591 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            �
           2606    25627 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            �
           2606    25661 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            �
           2606    25617    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            �
           2606    25635 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            �
           2606    25675 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            �
           2606    25713     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213                       2606    25699 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            �
           2606    25583 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            �
           2606    25581 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            �
           2606    25573 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203                       2606    25728 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220                       2606    25773 6   student_profiles_student student_profiles_student_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.student_profiles_student
    ADD CONSTRAINT student_profiles_student_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.student_profiles_student DROP CONSTRAINT student_profiles_student_pkey;
       public            postgres    false    226                       2606    25758 0   teachers_classlisting teachers_classlisting_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.teachers_classlisting
    ADD CONSTRAINT teachers_classlisting_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.teachers_classlisting DROP CONSTRAINT teachers_classlisting_pkey;
       public            postgres    false    224            	           2606    25745 +   teachers_teacher teachers_teacher_email_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.teachers_teacher
    ADD CONSTRAINT teachers_teacher_email_key UNIQUE (email);
 U   ALTER TABLE ONLY public.teachers_teacher DROP CONSTRAINT teachers_teacher_email_key;
       public            postgres    false    222                       2606    25741 &   teachers_teacher teachers_teacher_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.teachers_teacher
    ADD CONSTRAINT teachers_teacher_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.teachers_teacher DROP CONSTRAINT teachers_teacher_pkey;
       public            postgres    false    222                       2606    25743 .   teachers_teacher teachers_teacher_username_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.teachers_teacher
    ADD CONSTRAINT teachers_teacher_username_key UNIQUE (username);
 X   ALTER TABLE ONLY public.teachers_teacher DROP CONSTRAINT teachers_teacher_username_key;
       public            postgres    false    222            �
           1259    25720    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            �
           1259    25657 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            �
           1259    25658 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            �
           1259    25643 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            �
           1259    25673 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            �
           1259    25672 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            �
           1259    25687 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            �
           1259    25686 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            �
           1259    25714     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            �
           1259    25710 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219                       1259    25711 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219                       1259    25730 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220                       1259    25729 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220                       1259    25778 7   student_profiles_student_student_listing_id_id_9f560938    INDEX     �   CREATE INDEX student_profiles_student_student_listing_id_id_9f560938 ON public.student_profiles_student USING btree (student_listing_id_id);
 K   DROP INDEX public.student_profiles_student_student_listing_id_id_9f560938;
       public            postgres    false    226                       1259    25764 +   teachers_classlisting_teacherid_id_87f09f47    INDEX     u   CREATE INDEX teachers_classlisting_teacherid_id_87f09f47 ON public.teachers_classlisting USING btree (teacherid_id);
 ?   DROP INDEX public.teachers_classlisting_teacherid_id_87f09f47;
       public            postgres    false    224                       1259    25747 $   teachers_teacher_email_b46a26b9_like    INDEX     v   CREATE INDEX teachers_teacher_email_b46a26b9_like ON public.teachers_teacher USING btree (email varchar_pattern_ops);
 8   DROP INDEX public.teachers_teacher_email_b46a26b9_like;
       public            postgres    false    222                       1259    25746 '   teachers_teacher_username_ee33b7e3_like    INDEX     |   CREATE INDEX teachers_teacher_username_ee33b7e3_like ON public.teachers_teacher USING btree (username varchar_pattern_ops);
 ;   DROP INDEX public.teachers_teacher_username_ee33b7e3_like;
       public            postgres    false    222                       2606    25652 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2786    207    211                       2606    25647 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    211    209    2791                       2606    25638 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    207    2781                       2606    25667 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2791    215    209                       2606    25662 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    215    2799    213                       2606    25681 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2786    217    207                       2606    25676 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2799    213    217                       2606    25700 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2781    205    219                       2606    25705 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    2799    219    213                       2606    25779 X   student_profiles_student student_profiles_stu_student_listing_id_i_9f560938_fk_teachers_    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_profiles_student
    ADD CONSTRAINT student_profiles_stu_student_listing_id_i_9f560938_fk_teachers_ FOREIGN KEY (student_listing_id_id) REFERENCES public.teachers_classlisting(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.student_profiles_student DROP CONSTRAINT student_profiles_stu_student_listing_id_i_9f560938_fk_teachers_;
       public          postgres    false    224    2832    226                       2606    25759 M   teachers_classlisting teachers_classlistin_teacherid_id_87f09f47_fk_teachers_    FK CONSTRAINT     �   ALTER TABLE ONLY public.teachers_classlisting
    ADD CONSTRAINT teachers_classlistin_teacherid_id_87f09f47_fk_teachers_ FOREIGN KEY (teacherid_id) REFERENCES public.teachers_teacher(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.teachers_classlisting DROP CONSTRAINT teachers_classlistin_teacherid_id_87f09f47_fk_teachers_;
       public          postgres    false    222    224    2827            �      x������ � �      �      x������ � �      �   z  x�]�]n�0���Sp�����]c҄ �H*6����o��E��8�|�s��}}�=�j�٣o�l	���΃HJU���GI�QW�~G�'�#$�F6�2~��۔���Z
I
�l��ъ�;kI�z��˯?c�2�
�8a�E�)�$줡�QQ�%[*4%X��.��\A��]�_��"7i�B�f���2����78���e�b�<dw�9 �{cZ�����2����~yS����-�^�`R����~��~�AW�����gm@#[��g=	S��&��!�"������iq�sO�<r���Z�3�G�n��?���T7���4NE�q��1�G�g�l�~3y�S?��<ό���P�'"_��`�֕      �   Z  x���Y��<���_��Rlc�H��m�F&�lD�*H;�����m��f���k�������}{e.�Xd��Ӈ]�'[m�fq5�ؑ�u��q)��i%���[%RnnA�'$<i� ���;�s�lc���_ ��bt3�Y��b�9���YqH��C�+ _���uA��	I���:⟄ǄDO�fo�J�Ŷkq�U���p��5;��H��\M�I�̰�����V�_�R�J"`� �"�҉�:�%��d���ϟ��Og����٠ �>~��1_D��������=�}��50kT{��oO���\+Z�*�����:�9�
�^�ؓ�E1Lp�>�. �|��O����Y'r$��\�F���S�Ó��F+��HK�Y�v}u�����1m�P��+|?v��Y0�Gߟ#ǒ�r#��פ-�)��F�:�S�6�v#\��8y=o<J��h���㢳���k'}��Ie ��h������a�M}.
���p7zܬ��E��jU���Ϋ������Yw{k�4W��Nji�{�y�*�迏�K�eNA@@�5
#w׹n�M3Lv�	r
E �B xH�eI:��f���o/fO���8��8��|^F^�h
�<~�4���q���ߝ��:���$���7�o��h���{���D@�P����C �ѭ�:���n�G�8��n髕���7R=�fE�3W��έ�?�N�zeZ�?�6�y��GO�2��}�̮P��"�]�n�1�a0�kb���w�o��U�����Q�� �ӡڪ*ݷQ�v�)����"u9I���v�L�0,/�(Jz�>c��!|s��^�X/&��x��,�[�z�'<�M#����&tN��Rh��&ϗ�� O���E�N�>�Z����ۉ�������r�e w�|�bw��Ye�KoΪ	������,�܉xv��t���o���Y�zW[G��?u���*Fwl��&���6$�ࡇa]�ŀ9(B$�z��,�x+�R6UIĦ31ۋ!ɇ�h螆?��Kf��;�Cԝ�����,�:]�$��y@��D�K7��EH����~�g$�Ό9�i���O����?`�ei      �      x������ � �      �      x������ � �      �   x  x���Mo�@���W��zj�ڙ��[>V+EI�R�xS#a� �����,���(q%$h���afd�  	�y��y��ɘ� ��b���������n����q�����h("b�`p��vY��>fH� E�1x0-��x1�o.j��t�"�j��.r�L�TA6Y�lA	2F7�莠��ڭnWf����0�� ��
G�J����X�ֵ+�e��<q�̞�,��u�oS��+�xg��r�t�^+�h�N\���N������t�Sƛ���L,#�P����6�*f�j0F����.q9\���6ȏ�^���7��qo`,��}�Olm�R����=9/�[WU�f�ja�"Q�#��o��k�V��?���j�Ԁ�ߡ�Q���ӂ�@?-�kG��]���YF�S���ޭ2���k�r��9��i���÷+�-���(z�`�c� *��ݯ�??��ڴ���#7�D�3����k2���pC4&4U� 6�zj��>o��7[�lz7��O79+���7Ġ�%��fR��[��+�]4�6�s�7���A2���������A���GO�R��d��2��]�'3$P�������6�'�L&O���M      �   |   x�M��
�0D�w>F�V�_	�6]H���<��֢o3�̑�����p"7.�(����3�f3���JN�l$��
�[i�݁|N�5[����?���߹�N5���������R�$�/}� oJ�?      �   �  x���͎� ���S�}5��{��r	�,����gm�h��\�@}*����1�1�۬}�iF��2do o�?���-�s#*B�����	���3� ��DT��`��*�(�xV��S��tz�>��.&�.�C����0"c(c�T�.�i��V���N��i�ή�o���iې�ՠ�i��qV)N�����`�_��9�Oi���S���gou��F[|\���}"�l�I �Z���i�QE/�,a�#�*֗0�=nqz A�1�ߋq)��3�5�c��\���6Cʚ�
���Jh�&'������J�H�X&�$uΈ��|�����K���w��i�6Z�e~��P�U&�e�ii9�������xlC�S������9�)�ڕu��ڽ����7����D��(�5>���"o���X�F4�ed��e������gZ"��n��Y�e��%���Z� �)����E�S�j�ͯ��t�QᏌ      �     x���Ɏ�0�s�)�>j�b�>L�"j@�H�h.��`Bh��o2ʌ4��\ү��J��P�9F����>��(�O`n<p��N���o�|�����8,+�z[��S��'������F�}zz@ �G��Rb�5��x����`�/hz���gq���K���I�/1�ߓ'�I�������܌jV�A1��$g��\�i$d�܏��&��XG7�k�Y:U$����X���!��1j#!���s�!z㏠'�J%�W�$TV2����!���#`ҫ��f:��LL�q,�uF�ڝ�N�׹멒U�������ť��a�1/%q�{��Z��-j+{��u�ݒ;(��5���q�;�0��&��m�����;�?�4�Z֬�Ӆ>���X�m.T|�T�E4�)�3 z��rr��@�Z�mr��Z�m���I�����0(�%ʮ&
˸
ծt}{y?|�f׳Ƿư�58�!w�lr��~Xs/���>hBf��������[[�V���&�      �   K   x���LL,�ϋ742�4�24@�q"q��-8�sar�p�1���wbNeb^&T��E����E��+F��� ���      �   �  x����n1Eך��;�����'h0<��H�`dz�T#$ʍ��e�G�h��uxyymf(�8O��s��#��(g�C6���9Z�5&���e�e��D�>��8A�ؑXp39!)	p�{���-P�2��Q���,����P�da@�z�(J��Uu����t�\`Ihj�z]O�ha�//��� ƭ^B��4�B�y���m	6����s0���'�S�pGn�����M�zQ]�ֻ�������xO���o��/z��fM�d��'s[��a|v�V��<<|����L��wڃ��i��?����gG&E�;�~���f:1K�g���'�Ո躽E�Q�0,�u56s<蜓���5������-����ه�K�-ϦofK>�~����]_��      �   7  x��ϊ�0���S̽^c˖��iJ�e�-=�֞&Zdɫ?i����R�B9 ��7�~�ݰO�d��g��dN�f'���
 '�x��@�jV~P��U(�	xDt2z�ѯ��:�sd���Y�y��*�$|��P��K��>��iS�0��E�����r���������%x�Jxo�)위�M��Y�r�dGK
�%��j�&$�ʒ��/@S��:RwƓ��`� ��o�����Am `�0[�#���@ �A�=��1�>kI���5��E��&I9�DFQ/������H'4�CG�[�� 'HS���H"�t�A��;�m�^�����Y�0��3�t'���|^�ꮮ���A4��}W�CS�:�5�L�/�,���}߷��3����%#�A��2�A���}�+���7\��4W��{�-!y��e�;]�~�}F��Gs�dF���s����]� #��[f.l����TW����:?n�\/2=�D�����b���-."���}ƥeO�\�,���E'���,�oQi�d����n���ٜt     