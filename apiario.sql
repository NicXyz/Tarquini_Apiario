PGDMP     -                    z           Apiario    14.1    14.1 '               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            !           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            "           1262    74010    Apiario    DATABASE     e   CREATE DATABASE "Apiario" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Italian_Italy.1252';
    DROP DATABASE "Apiario";
                postgres    false            ?            1259    74025    apiario    TABLE     ?   CREATE TABLE public.apiario (
    id_apiario integer NOT NULL,
    indirizzo character varying NOT NULL,
    long numeric NOT NULL,
    lat numeric NOT NULL
);
    DROP TABLE public.apiario;
       public         heap    postgres    false            ?            1259    74082    apiario_id_apiario_seq    SEQUENCE     ?   ALTER TABLE public.apiario ALTER COLUMN id_apiario ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.apiario_id_apiario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    211            ?            1259    74011    arnia    TABLE     ?   CREATE TABLE public.arnia (
    id_arnia integer NOT NULL,
    tipo_regina character varying NOT NULL,
    anno_regina integer NOT NULL,
    anno_acq integer NOT NULL,
    id_apiario integer NOT NULL,
    id_tipo_arnia integer NOT NULL
);
    DROP TABLE public.arnia;
       public         heap    postgres    false            ?            1259    74083    arnia_id_arnia_seq    SEQUENCE     ?   ALTER TABLE public.arnia ALTER COLUMN id_arnia ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.arnia_id_arnia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    209            ?            1259    74046    produzione_miele    TABLE     ?   CREATE TABLE public.produzione_miele (
    id_produzione integer NOT NULL,
    data date NOT NULL,
    id_arnia integer NOT NULL,
    id_tipo_miele integer NOT NULL,
    qta integer NOT NULL
);
 $   DROP TABLE public.produzione_miele;
       public         heap    postgres    false            ?            1259    74086 "   produzione_miele_id_produzione_seq    SEQUENCE     ?   ALTER TABLE public.produzione_miele ALTER COLUMN id_produzione ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.produzione_miele_id_produzione_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            ?            1259    74018 
   tipo_arnia    TABLE     s   CREATE TABLE public.tipo_arnia (
    id_tipo_arnia integer NOT NULL,
    descrizione character varying NOT NULL
);
    DROP TABLE public.tipo_arnia;
       public         heap    postgres    false            ?            1259    74084    tipo_arnia_id_tipo_arnia_seq    SEQUENCE     ?   ALTER TABLE public.tipo_arnia ALTER COLUMN id_tipo_arnia ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tipo_arnia_id_tipo_arnia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    210            ?            1259    74032 
   tipo_miele    TABLE     s   CREATE TABLE public.tipo_miele (
    id_tipo_miele integer NOT NULL,
    descrizione character varying NOT NULL
);
    DROP TABLE public.tipo_miele;
       public         heap    postgres    false            ?            1259    74085    tipo_miele_id_tipo_miele_seq    SEQUENCE     ?   ALTER TABLE public.tipo_miele ALTER COLUMN id_tipo_miele ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tipo_miele_id_tipo_miele_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    212            ?            1259    74039    trattamenti    TABLE     ?   CREATE TABLE public.trattamenti (
    id_trattamenti integer NOT NULL,
    id_arnia integer NOT NULL,
    descrizione character varying NOT NULL,
    data_trattamento date NOT NULL
);
    DROP TABLE public.trattamenti;
       public         heap    postgres    false            ?            1259    74087    trattamenti_id_trattamenti_seq    SEQUENCE     ?   ALTER TABLE public.trattamenti ALTER COLUMN id_trattamenti ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.trattamenti_id_trattamenti_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    213                      0    74025    apiario 
   TABLE DATA                 public          postgres    false    211   ?+                 0    74011    arnia 
   TABLE DATA                 public          postgres    false    209   ?,                 0    74046    produzione_miele 
   TABLE DATA                 public          postgres    false    214   Q-                 0    74018 
   tipo_arnia 
   TABLE DATA                 public          postgres    false    210   .                 0    74032 
   tipo_miele 
   TABLE DATA                 public          postgres    false    212   ?.                 0    74039    trattamenti 
   TABLE DATA                 public          postgres    false    213   1/       #           0    0    apiario_id_apiario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.apiario_id_apiario_seq', 5, true);
          public          postgres    false    215            $           0    0    arnia_id_arnia_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.arnia_id_arnia_seq', 5, true);
          public          postgres    false    216            %           0    0 "   produzione_miele_id_produzione_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.produzione_miele_id_produzione_seq', 11, true);
          public          postgres    false    219            &           0    0    tipo_arnia_id_tipo_arnia_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.tipo_arnia_id_tipo_arnia_seq', 4, true);
          public          postgres    false    217            '           0    0    tipo_miele_id_tipo_miele_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.tipo_miele_id_tipo_miele_seq', 2, true);
          public          postgres    false    218            (           0    0    trattamenti_id_trattamenti_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.trattamenti_id_trattamenti_seq', 6, true);
          public          postgres    false    220            z           2606    74031    apiario apiario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.apiario
    ADD CONSTRAINT apiario_pkey PRIMARY KEY (id_apiario);
 >   ALTER TABLE ONLY public.apiario DROP CONSTRAINT apiario_pkey;
       public            postgres    false    211            v           2606    74017    arnia arnia_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.arnia
    ADD CONSTRAINT arnia_pkey PRIMARY KEY (id_arnia);
 :   ALTER TABLE ONLY public.arnia DROP CONSTRAINT arnia_pkey;
       public            postgres    false    209            ?           2606    74050 &   produzione_miele produzione_miele_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.produzione_miele
    ADD CONSTRAINT produzione_miele_pkey PRIMARY KEY (id_produzione);
 P   ALTER TABLE ONLY public.produzione_miele DROP CONSTRAINT produzione_miele_pkey;
       public            postgres    false    214            x           2606    74024    tipo_arnia tipo_arnia_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.tipo_arnia
    ADD CONSTRAINT tipo_arnia_pkey PRIMARY KEY (id_tipo_arnia);
 D   ALTER TABLE ONLY public.tipo_arnia DROP CONSTRAINT tipo_arnia_pkey;
       public            postgres    false    210            |           2606    74038    tipo_miele tipo_miele_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.tipo_miele
    ADD CONSTRAINT tipo_miele_pkey PRIMARY KEY (id_tipo_miele);
 D   ALTER TABLE ONLY public.tipo_miele DROP CONSTRAINT tipo_miele_pkey;
       public            postgres    false    212            ~           2606    74045    trattamenti trattamenti_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.trattamenti
    ADD CONSTRAINT trattamenti_pkey PRIMARY KEY (id_trattamenti);
 F   ALTER TABLE ONLY public.trattamenti DROP CONSTRAINT trattamenti_pkey;
       public            postgres    false    213            ?           2606    74051    arnia id_apiario    FK CONSTRAINT     ?   ALTER TABLE ONLY public.arnia
    ADD CONSTRAINT id_apiario FOREIGN KEY (id_apiario) REFERENCES public.apiario(id_apiario) NOT VALID;
 :   ALTER TABLE ONLY public.arnia DROP CONSTRAINT id_apiario;
       public          postgres    false    3194    209    211            ?           2606    74061    produzione_miele id_arnia    FK CONSTRAINT     ?   ALTER TABLE ONLY public.produzione_miele
    ADD CONSTRAINT id_arnia FOREIGN KEY (id_arnia) REFERENCES public.arnia(id_arnia) NOT VALID;
 C   ALTER TABLE ONLY public.produzione_miele DROP CONSTRAINT id_arnia;
       public          postgres    false    3190    209    214            ?           2606    74071    trattamenti id_arnia    FK CONSTRAINT     ?   ALTER TABLE ONLY public.trattamenti
    ADD CONSTRAINT id_arnia FOREIGN KEY (id_arnia) REFERENCES public.arnia(id_arnia) NOT VALID;
 >   ALTER TABLE ONLY public.trattamenti DROP CONSTRAINT id_arnia;
       public          postgres    false    209    3190    213            ?           2606    74056    arnia id_tipo_arnia    FK CONSTRAINT     ?   ALTER TABLE ONLY public.arnia
    ADD CONSTRAINT id_tipo_arnia FOREIGN KEY (id_tipo_arnia) REFERENCES public.tipo_arnia(id_tipo_arnia) NOT VALID;
 =   ALTER TABLE ONLY public.arnia DROP CONSTRAINT id_tipo_arnia;
       public          postgres    false    3192    209    210            ?           2606    74066    produzione_miele id_tipo_miele    FK CONSTRAINT     ?   ALTER TABLE ONLY public.produzione_miele
    ADD CONSTRAINT id_tipo_miele FOREIGN KEY (id_tipo_miele) REFERENCES public.tipo_miele(id_tipo_miele) NOT VALID;
 H   ALTER TABLE ONLY public.produzione_miele DROP CONSTRAINT id_tipo_miele;
       public          postgres    false    3196    214    212               ?   x????
?@??>?ݩ ?ܩ?*h??RpLhS?\0??Z??7????sgq??T?e^?J??ﳡ3=KDT=?? ?Yr?צkk?f?!+e???JϠﺐW(????SC$d?v?\?	?`??[???*??????i????;&և????'|? ?l!???s?         ?   x????
?@ ??O17?Е????B)?&t??Dd?E߿٭.?@]??????e2?
??f?v??A?o>c0?4?lף?B?U????mO?-?>?'?<??e)2????J??ޟ.?D)????A?x??]?	???.??r'??<??O$?bF??????2?AF? x???         ?   x??ѱ
?0?ݧ?M??$?:?N??h?:IZV??ҧ????r?7|??b-?T?%Ѝ?ھv]ߖ?׶MU?mUWز??J3Sh?ƺm?]??	|B??4Ug_@?t&o???w馆???!RƩ?>?)@Qx??F$t$N9Rd???U???RD?ܒXH?mhگ&A?a??&???F??         ?   x???v
Q???W((M??L?+?,ȏO,??LT??L?GpuRR???2?2??R5??\??<]<???#?C\}?}B]!d??????zbrbrf???5?'?,2Y??Z?Jc{??? ?)?ɡ??L?6??AÎ? ??1         s   x???v
Q???W((M??L?+?,ȏ??L?IU??L?GpuRR???2?2??R5??\??<]<???#?C\}?}B]!d??????zRi~^???5?'??1?ړY\????? ??D}         ?   x?ŐA
?0E?=???B"?DW????&\Il?h+5n<??
?^??x?|x?̕(5?\p^??^??xon??לGL ??[g4?Q?????0ތ??J????|ꤴ8@???w*H??x?ء,?i?????:?s?!???O?Q??g??q|????Y~???????     