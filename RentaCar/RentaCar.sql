PGDMP     "    	                 |            rentacar    13.13    13.13     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16781    rentacar    DATABASE     e   CREATE DATABASE rentacar WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE rentacar;
                postgres    false            �            1259    16832    book    TABLE     \  CREATE TABLE public.book (
    book_id integer NOT NULL,
    book_car_id integer NOT NULL,
    book_name text NOT NULL,
    book_idno text NOT NULL,
    book_mpno text NOT NULL,
    book_mail text,
    book_strt_date date NOT NULL,
    book_fnsh_date date NOT NULL,
    book_prc integer NOT NULL,
    book_note text,
    book_case text NOT NULL
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    16869    book_book_id_seq    SEQUENCE     �   ALTER TABLE public.book ALTER COLUMN book_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.book_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    205            �            1259    16808    brand    TABLE     Z   CREATE TABLE public.brand (
    brand_id bigint NOT NULL,
    brand_name text NOT NULL
);
    DROP TABLE public.brand;
       public         heap    postgres    false            �            1259    16860    brand_brand_id_seq    SEQUENCE     �   ALTER TABLE public.brand ALTER COLUMN brand_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.brand_brand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    202            �            1259    16816    car    TABLE     �   CREATE TABLE public.car (
    car_id integer NOT NULL,
    car_model_id integer NOT NULL,
    car_color text NOT NULL,
    car_km integer NOT NULL,
    car_plate text NOT NULL
);
    DROP TABLE public.car;
       public         heap    postgres    false            �            1259    16867    car_car_id_seq    SEQUENCE     �   ALTER TABLE public.car ALTER COLUMN car_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.car_car_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    203            �            1259    16824    model    TABLE     �   CREATE TABLE public.model (
    model_id integer NOT NULL,
    model_brand_id integer NOT NULL,
    model_name text NOT NULL,
    model_type text NOT NULL,
    model_year text NOT NULL,
    model_fuel text NOT NULL,
    model_gear text NOT NULL
);
    DROP TABLE public.model;
       public         heap    postgres    false            �            1259    16865    model_model_id_seq    SEQUENCE     �   ALTER TABLE public.model ALTER COLUMN model_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.model_model_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    204            �            1259    16782    user    TABLE     �   CREATE TABLE public."user" (
    user_id bigint NOT NULL,
    user_name text NOT NULL,
    user_pass text NOT NULL,
    user_role text NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    16790    user_user_id_seq    SEQUENCE     �   ALTER TABLE public."user" ALTER COLUMN user_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.user_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    200            �          0    16832    book 
   TABLE DATA           �   COPY public.book (book_id, book_car_id, book_name, book_idno, book_mpno, book_mail, book_strt_date, book_fnsh_date, book_prc, book_note, book_case) FROM stdin;
    public          postgres    false    205   \       �          0    16808    brand 
   TABLE DATA           5   COPY public.brand (brand_id, brand_name) FROM stdin;
    public          postgres    false    202   �       �          0    16816    car 
   TABLE DATA           Q   COPY public.car (car_id, car_model_id, car_color, car_km, car_plate) FROM stdin;
    public          postgres    false    203   �       �          0    16824    model 
   TABLE DATA           u   COPY public.model (model_id, model_brand_id, model_name, model_type, model_year, model_fuel, model_gear) FROM stdin;
    public          postgres    false    204   r        �          0    16782    user 
   TABLE DATA           J   COPY public."user" (user_id, user_name, user_pass, user_role) FROM stdin;
    public          postgres    false    200   �        �           0    0    book_book_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.book_book_id_seq', 13, true);
          public          postgres    false    209            �           0    0    brand_brand_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.brand_brand_id_seq', 6, true);
          public          postgres    false    206            �           0    0    car_car_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.car_car_id_seq', 6, true);
          public          postgres    false    208            �           0    0    model_model_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.model_model_id_seq', 10, true);
          public          postgres    false    207            �           0    0    user_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.user_user_id_seq', 1, true);
          public          postgres    false    201            H           2606    16841    book book_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (book_id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    205            B           2606    16852    brand brand_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.brand
    ADD CONSTRAINT brand_pkey PRIMARY KEY (brand_id);
 :   ALTER TABLE ONLY public.brand DROP CONSTRAINT brand_pkey;
       public            postgres    false    202            D           2606    16823    car car_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (car_id);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public            postgres    false    203            F           2606    16831    model model_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_pkey PRIMARY KEY (model_id);
 :   ALTER TABLE ONLY public.model DROP CONSTRAINT model_pkey;
       public            postgres    false    204            @           2606    16789    user user_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    200            �   N   x���4�t�4�4�t�4202�54 "ӌӘӍ3%?/������"�����Ȉ��<�������Ԍ�)F��� �+      �   3   x�3��M-JNMI-�2��/H��2�J�K,�)�2���,�KI������ (*      �   e   x�=�K
�0�ur��@���˨Z�څ���am��<f�a�`�d���Mͧ�D`���� r���yn�k�K���wjd��m�� �>���Z�7      �   }   x�}ͱ
�@E������c,�ɠ��ܤ��`��c�(����[b�OXv,G<���I�]�P����ǈ�5����Y'N�m �� ĻI��7ڠ �����8����(��"�_)�      �      x�3�LL����4426�0c�b���� _��     