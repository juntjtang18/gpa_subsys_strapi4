PGDMP         3                }           gpa-subsys-db1    14.18    14.18 (Homebrew) �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    62644    gpa-subsys-db1    DATABASE     d   CREATE DATABASE "gpa-subsys-db1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF8';
     DROP DATABASE "gpa-subsys-db1";
                strapi    false            �           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM cloudsqladmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO cloudsqlsuperuser;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   cloudsqlsuperuser    false    3            �            1259    62680    admin_permissions    TABLE     g  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.admin_permissions;
       public         heap    strapi    false            �            1259    62679    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          strapi    false    218            �           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          strapi    false    217            �            1259    62827    admin_permissions_role_links    TABLE     �   CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    strapi    false            �            1259    62826 #   admin_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.admin_permissions_role_links_id_seq;
       public          strapi    false    244            �           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;
          public          strapi    false    243            �            1259    62702    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_roles;
       public         heap    strapi    false            �            1259    62701    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          strapi    false    222            �           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          strapi    false    221            �            1259    62691    admin_users    TABLE     B  CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_users;
       public         heap    strapi    false            �            1259    62690    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          strapi    false    220            �           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          strapi    false    219            �            1259    62839    admin_users_roles_links    TABLE     �   CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    strapi    false            �            1259    62838    admin_users_roles_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.admin_users_roles_links_id_seq;
       public          strapi    false    246            �           0    0    admin_users_roles_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;
          public          strapi    false    245                       1259    63155    components_a_features    TABLE     G   CREATE TABLE public.components_a_features (
    id integer NOT NULL
);
 )   DROP TABLE public.components_a_features;
       public         heap    strapi    false                       1259    63154    components_a_features_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_a_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.components_a_features_id_seq;
       public          strapi    false    262            �           0    0    components_a_features_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.components_a_features_id_seq OWNED BY public.components_a_features.id;
          public          strapi    false    261                       1259    63228    entitlements    TABLE     n  CREATE TABLE public.entitlements (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    ismetered boolean,
    defaultlimit integer,
    reset_period character varying(255)
);
     DROP TABLE public.entitlements;
       public         heap    strapi    false                       1259    63227    entitlements_id_seq    SEQUENCE     �   CREATE SEQUENCE public.entitlements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.entitlements_id_seq;
       public          strapi    false    268            �           0    0    entitlements_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.entitlements_id_seq OWNED BY public.entitlements.id;
          public          strapi    false    267                       1259    63440    features    TABLE     *  CREATE TABLE public.features (
    id integer NOT NULL,
    feature character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    "order" integer
);
    DROP TABLE public.features;
       public         heap    strapi    false                       1259    63439    features_id_seq    SEQUENCE     �   CREATE SEQUENCE public.features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.features_id_seq;
       public          strapi    false    276            �           0    0    features_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.features_id_seq OWNED BY public.features.id;
          public          strapi    false    275                       1259    63451    features_localizations_links    TABLE     �   CREATE TABLE public.features_localizations_links (
    id integer NOT NULL,
    feature_id integer,
    inv_feature_id integer,
    feature_order double precision
);
 0   DROP TABLE public.features_localizations_links;
       public         heap    strapi    false                       1259    63450 #   features_localizations_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.features_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.features_localizations_links_id_seq;
       public          strapi    false    278            �           0    0 #   features_localizations_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.features_localizations_links_id_seq OWNED BY public.features_localizations_links.id;
          public          strapi    false    277                       1259    63488    features_plans_links    TABLE     �   CREATE TABLE public.features_plans_links (
    id integer NOT NULL,
    feature_id integer,
    plan_id integer,
    plan_order double precision,
    feature_order double precision
);
 (   DROP TABLE public.features_plans_links;
       public         heap    strapi    false                       1259    63487    features_plans_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.features_plans_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.features_plans_links_id_seq;
       public          strapi    false    280            �           0    0    features_plans_links_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.features_plans_links_id_seq OWNED BY public.features_plans_links.id;
          public          strapi    false    279            �            1259    62753    files    TABLE     �  CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.files;
       public         heap    strapi    false            �            1259    62888    files_folder_links    TABLE     �   CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);
 &   DROP TABLE public.files_folder_links;
       public         heap    strapi    false            �            1259    62887    files_folder_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.files_folder_links_id_seq;
       public          strapi    false    254            �           0    0    files_folder_links_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;
          public          strapi    false    253            �            1259    62752    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          strapi    false    232            �           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          strapi    false    231            �            1259    62876    files_related_morphs    TABLE     �   CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    strapi    false            �            1259    62875    files_related_morphs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.files_related_morphs_id_seq;
       public          strapi    false    252            �           0    0    files_related_morphs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;
          public          strapi    false    251            �            1259    62816    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    strapi    false            �            1259    62815    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          strapi    false    242            �           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          strapi    false    241                       1259    63583    plan_ent_links    TABLE     �   CREATE TABLE public.plan_ent_links (
    id integer NOT NULL,
    limit_override integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.plan_ent_links;
       public         heap    strapi    false            "           1259    63604     plan_ent_links_entitlement_links    TABLE     �   CREATE TABLE public.plan_ent_links_entitlement_links (
    id integer NOT NULL,
    plan_ent_link_id integer,
    entitlement_id integer,
    plan_ent_link_order double precision
);
 4   DROP TABLE public.plan_ent_links_entitlement_links;
       public         heap    strapi    false            !           1259    63603 '   plan_ent_links_entitlement_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.plan_ent_links_entitlement_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.plan_ent_links_entitlement_links_id_seq;
       public          strapi    false    290            �           0    0 '   plan_ent_links_entitlement_links_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.plan_ent_links_entitlement_links_id_seq OWNED BY public.plan_ent_links_entitlement_links.id;
          public          strapi    false    289                       1259    63582    plan_ent_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.plan_ent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.plan_ent_links_id_seq;
       public          strapi    false    286            �           0    0    plan_ent_links_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.plan_ent_links_id_seq OWNED BY public.plan_ent_links.id;
          public          strapi    false    285                        1259    63592    plan_ent_links_plan_links    TABLE     �   CREATE TABLE public.plan_ent_links_plan_links (
    id integer NOT NULL,
    plan_ent_link_id integer,
    plan_id integer,
    plan_ent_link_order double precision
);
 -   DROP TABLE public.plan_ent_links_plan_links;
       public         heap    strapi    false                       1259    63591     plan_ent_links_plan_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.plan_ent_links_plan_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.plan_ent_links_plan_links_id_seq;
       public          strapi    false    288            �           0    0     plan_ent_links_plan_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.plan_ent_links_plan_links_id_seq OWNED BY public.plan_ent_links_plan_links.id;
          public          strapi    false    287                       1259    63164    plans    TABLE     �  CREATE TABLE public.plans (
    id integer NOT NULL,
    name character varying(255),
    product_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    sale_product_id character varying(255),
    sale_start_date timestamp(6) without time zone,
    sale_end_date timestamp(6) without time zone
);
    DROP TABLE public.plans;
       public         heap    strapi    false                       1259    63163    plans_id_seq    SEQUENCE     �   CREATE SEQUENCE public.plans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.plans_id_seq;
       public          strapi    false    264            �           0    0    plans_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.plans_id_seq OWNED BY public.plans.id;
          public          strapi    false    263                       1259    63268    plans_inherit_from_links    TABLE     �   CREATE TABLE public.plans_inherit_from_links (
    id integer NOT NULL,
    plan_id integer,
    inv_plan_id integer,
    plan_order double precision
);
 ,   DROP TABLE public.plans_inherit_from_links;
       public         heap    strapi    false                       1259    63267    plans_inherit_from_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.plans_inherit_from_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.plans_inherit_from_links_id_seq;
       public          strapi    false    270            �           0    0    plans_inherit_from_links_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.plans_inherit_from_links_id_seq OWNED BY public.plans_inherit_from_links.id;
          public          strapi    false    269            
           1259    63189    plans_localizations_links    TABLE     �   CREATE TABLE public.plans_localizations_links (
    id integer NOT NULL,
    plan_id integer,
    inv_plan_id integer,
    plan_order double precision
);
 -   DROP TABLE public.plans_localizations_links;
       public         heap    strapi    false            	           1259    63188     plans_localizations_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.plans_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.plans_localizations_links_id_seq;
       public          strapi    false    266            �           0    0     plans_localizations_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.plans_localizations_links_id_seq OWNED BY public.plans_localizations_links.id;
          public          strapi    false    265            �            1259    62724    strapi_api_token_permissions    TABLE       CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap    strapi    false            �            1259    62723 #   strapi_api_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public          strapi    false    226            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public          strapi    false    225            �            1259    62852 (   strapi_api_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);
 <   DROP TABLE public.strapi_api_token_permissions_token_links;
       public         heap    strapi    false            �            1259    62851 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.strapi_api_token_permissions_token_links_id_seq;
       public          strapi    false    248            �           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;
          public          strapi    false    247            �            1259    62713    strapi_api_tokens    TABLE     �  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap    strapi    false            �            1259    62712    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          strapi    false    224            �           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          strapi    false    223            �            1259    62662    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    strapi    false            �            1259    62661 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          strapi    false    214            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          strapi    false    213            �            1259    62653    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    strapi    false            �            1259    62652    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          strapi    false    212            �           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          strapi    false    211            �            1259    62646    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    strapi    false            �            1259    62645    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          strapi    false    210            �           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          strapi    false    209            �            1259    62744 !   strapi_transfer_token_permissions    TABLE     
  CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 5   DROP TABLE public.strapi_transfer_token_permissions;
       public         heap    strapi    false            �            1259    62743 (   strapi_transfer_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
       public          strapi    false    230            �           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;
          public          strapi    false    229            �            1259    62864 -   strapi_transfer_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);
 A   DROP TABLE public.strapi_transfer_token_permissions_token_links;
       public         heap    strapi    false            �            1259    62863 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq;
       public          strapi    false    250            �           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;
          public          strapi    false    249            �            1259    62733    strapi_transfer_tokens    TABLE     �  CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 *   DROP TABLE public.strapi_transfer_tokens;
       public         heap    strapi    false            �            1259    62732    strapi_transfer_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
       public          strapi    false    228            �           0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;
          public          strapi    false    227            �            1259    62671    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    strapi    false            �            1259    62670    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          strapi    false    216            �           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          strapi    false    215                       1259    63336    subscriptions    TABLE     �  CREATE TABLE public.subscriptions (
    id integer NOT NULL,
    strapi_user_id integer,
    status character varying(255),
    expire_date timestamp(6) without time zone,
    original_transaction_id character varying(255),
    latest_transaction_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    start_date timestamp(6) without time zone
);
 !   DROP TABLE public.subscriptions;
       public         heap    strapi    false                       1259    63335    subscriptions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subscriptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.subscriptions_id_seq;
       public          strapi    false    272            �           0    0    subscriptions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.subscriptions_id_seq OWNED BY public.subscriptions.id;
          public          strapi    false    271                       1259    63347    subscriptions_plan_links    TABLE     �   CREATE TABLE public.subscriptions_plan_links (
    id integer NOT NULL,
    subscription_id integer,
    plan_id integer,
    subscription_order double precision
);
 ,   DROP TABLE public.subscriptions_plan_links;
       public         heap    strapi    false                       1259    63346    subscriptions_plan_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subscriptions_plan_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.subscriptions_plan_links_id_seq;
       public          strapi    false    274            �           0    0    subscriptions_plan_links_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.subscriptions_plan_links_id_seq OWNED BY public.subscriptions_plan_links.id;
          public          strapi    false    273            �            1259    62785    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    strapi    false            �            1259    62784    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          strapi    false    236            �           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          strapi    false    235                       1259    62912    up_permissions_role_links    TABLE     �   CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    strapi    false                       1259    62911     up_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.up_permissions_role_links_id_seq;
       public          strapi    false    258            �           0    0     up_permissions_role_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;
          public          strapi    false    257            �            1259    62794    up_roles    TABLE     8  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_roles;
       public         heap    strapi    false            �            1259    62793    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          strapi    false    238            �           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          strapi    false    237            �            1259    62805    up_users    TABLE     �  CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_users;
       public         heap    strapi    false            �            1259    62804    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          strapi    false    240            �           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          strapi    false    239                       1259    62924    up_users_role_links    TABLE     �   CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    strapi    false                       1259    62923    up_users_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.up_users_role_links_id_seq;
       public          strapi    false    260            �           0    0    up_users_role_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;
          public          strapi    false    259            �            1259    62770    upload_folders    TABLE     +  CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.upload_folders;
       public         heap    strapi    false            �            1259    62769    upload_folders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public          strapi    false    234            �           0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public          strapi    false    233                        1259    62900    upload_folders_parent_links    TABLE     �   CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);
 /   DROP TABLE public.upload_folders_parent_links;
       public         heap    strapi    false            �            1259    62899 "   upload_folders_parent_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upload_folders_parent_links_id_seq;
       public          strapi    false    256            �           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;
          public          strapi    false    255                       1259    63538    usageledgers    TABLE     2  CREATE TABLE public.usageledgers (
    id integer NOT NULL,
    strapi_user_id integer,
    consumed_at timestamp(6) without time zone,
    amount integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
     DROP TABLE public.usageledgers;
       public         heap    strapi    false                       1259    63547    usageledgers_entitlement_links    TABLE     �   CREATE TABLE public.usageledgers_entitlement_links (
    id integer NOT NULL,
    usageledger_id integer,
    entitlement_id integer,
    usageledger_order double precision
);
 2   DROP TABLE public.usageledgers_entitlement_links;
       public         heap    strapi    false                       1259    63546 %   usageledgers_entitlement_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usageledgers_entitlement_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.usageledgers_entitlement_links_id_seq;
       public          strapi    false    284            �           0    0 %   usageledgers_entitlement_links_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.usageledgers_entitlement_links_id_seq OWNED BY public.usageledgers_entitlement_links.id;
          public          strapi    false    283                       1259    63537    usageledgers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usageledgers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.usageledgers_id_seq;
       public          strapi    false    282            �           0    0    usageledgers_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.usageledgers_id_seq OWNED BY public.usageledgers.id;
          public          strapi    false    281            �           2604    62683    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    218    217    218            �           2604    62830    admin_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    244    243    244            �           2604    62705    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    221    222    222            �           2604    62694    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    219    220    220            �           2604    62842    admin_users_roles_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    246    245    246            �           2604    63158    components_a_features id    DEFAULT     �   ALTER TABLE ONLY public.components_a_features ALTER COLUMN id SET DEFAULT nextval('public.components_a_features_id_seq'::regclass);
 G   ALTER TABLE public.components_a_features ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    262    261    262            �           2604    63231    entitlements id    DEFAULT     r   ALTER TABLE ONLY public.entitlements ALTER COLUMN id SET DEFAULT nextval('public.entitlements_id_seq'::regclass);
 >   ALTER TABLE public.entitlements ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    268    267    268            �           2604    63443    features id    DEFAULT     j   ALTER TABLE ONLY public.features ALTER COLUMN id SET DEFAULT nextval('public.features_id_seq'::regclass);
 :   ALTER TABLE public.features ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    276    275    276            �           2604    63454    features_localizations_links id    DEFAULT     �   ALTER TABLE ONLY public.features_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.features_localizations_links_id_seq'::regclass);
 N   ALTER TABLE public.features_localizations_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    278    277    278            �           2604    63491    features_plans_links id    DEFAULT     �   ALTER TABLE ONLY public.features_plans_links ALTER COLUMN id SET DEFAULT nextval('public.features_plans_links_id_seq'::regclass);
 F   ALTER TABLE public.features_plans_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    280    279    280            �           2604    62756    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    231    232    232            �           2604    62891    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    253    254    254            �           2604    62879    files_related_morphs id    DEFAULT     �   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    252    251    252            �           2604    62819    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    241    242    242            �           2604    63586    plan_ent_links id    DEFAULT     v   ALTER TABLE ONLY public.plan_ent_links ALTER COLUMN id SET DEFAULT nextval('public.plan_ent_links_id_seq'::regclass);
 @   ALTER TABLE public.plan_ent_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    286    285    286            �           2604    63607 #   plan_ent_links_entitlement_links id    DEFAULT     �   ALTER TABLE ONLY public.plan_ent_links_entitlement_links ALTER COLUMN id SET DEFAULT nextval('public.plan_ent_links_entitlement_links_id_seq'::regclass);
 R   ALTER TABLE public.plan_ent_links_entitlement_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    290    289    290            �           2604    63595    plan_ent_links_plan_links id    DEFAULT     �   ALTER TABLE ONLY public.plan_ent_links_plan_links ALTER COLUMN id SET DEFAULT nextval('public.plan_ent_links_plan_links_id_seq'::regclass);
 K   ALTER TABLE public.plan_ent_links_plan_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    287    288    288            �           2604    63167    plans id    DEFAULT     d   ALTER TABLE ONLY public.plans ALTER COLUMN id SET DEFAULT nextval('public.plans_id_seq'::regclass);
 7   ALTER TABLE public.plans ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    263    264    264            �           2604    63271    plans_inherit_from_links id    DEFAULT     �   ALTER TABLE ONLY public.plans_inherit_from_links ALTER COLUMN id SET DEFAULT nextval('public.plans_inherit_from_links_id_seq'::regclass);
 J   ALTER TABLE public.plans_inherit_from_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    269    270    270            �           2604    63192    plans_localizations_links id    DEFAULT     �   ALTER TABLE ONLY public.plans_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.plans_localizations_links_id_seq'::regclass);
 K   ALTER TABLE public.plans_localizations_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    265    266    266            �           2604    62727    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    225    226    226            �           2604    62855 +   strapi_api_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    248    247    248            �           2604    62716    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    224    223    224            �           2604    62665    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    213    214    214            �           2604    62656    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    211    212    212                       2604    62649    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    210    209    210            �           2604    62747 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    230    229    230            �           2604    62867 0   strapi_transfer_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);
 _   ALTER TABLE public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    249    250    250            �           2604    62736    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    228    227    228            �           2604    62674    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    216    215    216            �           2604    63339    subscriptions id    DEFAULT     t   ALTER TABLE ONLY public.subscriptions ALTER COLUMN id SET DEFAULT nextval('public.subscriptions_id_seq'::regclass);
 ?   ALTER TABLE public.subscriptions ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    271    272    272            �           2604    63350    subscriptions_plan_links id    DEFAULT     �   ALTER TABLE ONLY public.subscriptions_plan_links ALTER COLUMN id SET DEFAULT nextval('public.subscriptions_plan_links_id_seq'::regclass);
 J   ALTER TABLE public.subscriptions_plan_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    273    274    274            �           2604    62788    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    236    235    236            �           2604    62915    up_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    257    258    258            �           2604    62797    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    238    237    238            �           2604    62808    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    240    239    240            �           2604    62927    up_users_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    259    260    260            �           2604    62773    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    233    234    234            �           2604    62903    upload_folders_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    256    255    256            �           2604    63541    usageledgers id    DEFAULT     r   ALTER TABLE ONLY public.usageledgers ALTER COLUMN id SET DEFAULT nextval('public.usageledgers_id_seq'::regclass);
 >   ALTER TABLE public.usageledgers ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    282    281    282            �           2604    63550 !   usageledgers_entitlement_links id    DEFAULT     �   ALTER TABLE ONLY public.usageledgers_entitlement_links ALTER COLUMN id SET DEFAULT nextval('public.usageledgers_entitlement_links_id_seq'::regclass);
 P   ALTER TABLE public.usageledgers_entitlement_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    284    283    284            \          0    62680    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    218   j�      v          0    62827    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          strapi    false    244   ��      `          0    62702    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    222   ��      ^          0    62691    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    220   ؛      x          0    62839    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          strapi    false    246   |�      �          0    63155    components_a_features 
   TABLE DATA           3   COPY public.components_a_features (id) FROM stdin;
    public          strapi    false    262   ��      �          0    63228    entitlements 
   TABLE DATA           �   COPY public.entitlements (id, name, slug, created_at, updated_at, created_by_id, updated_by_id, ismetered, defaultlimit, reset_period) FROM stdin;
    public          strapi    false    268   Ӝ      �          0    63440    features 
   TABLE DATA           v   COPY public.features (id, feature, created_at, updated_at, created_by_id, updated_by_id, locale, "order") FROM stdin;
    public          strapi    false    276   ��      �          0    63451    features_localizations_links 
   TABLE DATA           e   COPY public.features_localizations_links (id, feature_id, inv_feature_id, feature_order) FROM stdin;
    public          strapi    false    278    �      �          0    63488    features_plans_links 
   TABLE DATA           b   COPY public.features_plans_links (id, feature_id, plan_id, plan_order, feature_order) FROM stdin;
    public          strapi    false    280   �      j          0    62753    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    232   k�      �          0    62888    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          strapi    false    254   ��      ~          0    62876    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          strapi    false    252   ��      t          0    62816    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    242         �          0    63583    plan_ent_links 
   TABLE DATA           r   COPY public.plan_ent_links (id, limit_override, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    286   �      �          0    63604     plan_ent_links_entitlement_links 
   TABLE DATA           u   COPY public.plan_ent_links_entitlement_links (id, plan_ent_link_id, entitlement_id, plan_ent_link_order) FROM stdin;
    public          strapi    false    290   l�      �          0    63592    plan_ent_links_plan_links 
   TABLE DATA           g   COPY public.plan_ent_links_plan_links (id, plan_ent_link_id, plan_id, plan_ent_link_order) FROM stdin;
    public          strapi    false    288   ��      �          0    63164    plans 
   TABLE DATA           �   COPY public.plans (id, name, product_id, created_at, updated_at, created_by_id, updated_by_id, locale, sale_product_id, sale_start_date, sale_end_date) FROM stdin;
    public          strapi    false    264   ͠      �          0    63268    plans_inherit_from_links 
   TABLE DATA           X   COPY public.plans_inherit_from_links (id, plan_id, inv_plan_id, plan_order) FROM stdin;
    public          strapi    false    270   q�      �          0    63189    plans_localizations_links 
   TABLE DATA           Y   COPY public.plans_localizations_links (id, plan_id, inv_plan_id, plan_order) FROM stdin;
    public          strapi    false    266   ��      d          0    62724    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    226   ��      z          0    62852 (   strapi_api_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          strapi    false    248   ա      b          0    62713    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    224   �      X          0    62662    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          strapi    false    214   ��      V          0    62653    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          strapi    false    212   t�      T          0    62646    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          strapi    false    210   ��      h          0    62744 !   strapi_transfer_token_permissions 
   TABLE DATA           }   COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    230   �      |          0    62864 -   strapi_transfer_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
    public          strapi    false    250    �      f          0    62733    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    228   =�      Z          0    62671    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          strapi    false    216   Z�      �          0    63336    subscriptions 
   TABLE DATA           �   COPY public.subscriptions (id, strapi_user_id, status, expire_date, original_transaction_id, latest_transaction_id, created_at, updated_at, created_by_id, updated_by_id, start_date) FROM stdin;
    public          strapi    false    272   w�      �          0    63347    subscriptions_plan_links 
   TABLE DATA           d   COPY public.subscriptions_plan_links (id, subscription_id, plan_id, subscription_order) FROM stdin;
    public          strapi    false    274   ,�      n          0    62785    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    236   ��      �          0    62912    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          strapi    false    258   w�      p          0    62794    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    238   ��      r          0    62805    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    240   C�      �          0    62924    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          strapi    false    260   ��      l          0    62770    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    234    �      �          0    62900    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          strapi    false    256   �      �          0    63538    usageledgers 
   TABLE DATA           �   COPY public.usageledgers (id, strapi_user_id, consumed_at, amount, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    282   :�      �          0    63547    usageledgers_entitlement_links 
   TABLE DATA           o   COPY public.usageledgers_entitlement_links (id, usageledger_id, entitlement_id, usageledger_order) FROM stdin;
    public          strapi    false    284   W�      �           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 136, true);
          public          strapi    false    217            �           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 136, true);
          public          strapi    false    243            �           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          strapi    false    221            �           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public          strapi    false    219            �           0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);
          public          strapi    false    245            �           0    0    components_a_features_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.components_a_features_id_seq', 12, true);
          public          strapi    false    261            �           0    0    entitlements_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.entitlements_id_seq', 5, true);
          public          strapi    false    267            �           0    0    features_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.features_id_seq', 9, true);
          public          strapi    false    275            �           0    0 #   features_localizations_links_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.features_localizations_links_id_seq', 1, false);
          public          strapi    false    277            �           0    0    features_plans_links_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.features_plans_links_id_seq', 9, true);
          public          strapi    false    279            �           0    0    files_folder_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);
          public          strapi    false    253            �           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 1, false);
          public          strapi    false    231            �           0    0    files_related_morphs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 1, false);
          public          strapi    false    251            �           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          strapi    false    241            �           0    0 '   plan_ent_links_entitlement_links_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.plan_ent_links_entitlement_links_id_seq', 3, true);
          public          strapi    false    289            �           0    0    plan_ent_links_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.plan_ent_links_id_seq', 3, true);
          public          strapi    false    285            �           0    0     plan_ent_links_plan_links_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.plan_ent_links_plan_links_id_seq', 3, true);
          public          strapi    false    287            �           0    0    plans_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.plans_id_seq', 3, true);
          public          strapi    false    263            �           0    0    plans_inherit_from_links_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.plans_inherit_from_links_id_seq', 2, true);
          public          strapi    false    269            �           0    0     plans_localizations_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.plans_localizations_links_id_seq', 1, false);
          public          strapi    false    265            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          strapi    false    225            �           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);
          public          strapi    false    247            �           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, true);
          public          strapi    false    223            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 30, true);
          public          strapi    false    213            �           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 16, true);
          public          strapi    false    211            �           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          strapi    false    209            �           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public          strapi    false    229            �           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);
          public          strapi    false    249            �           0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public          strapi    false    227            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          strapi    false    215            �           0    0    subscriptions_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.subscriptions_id_seq', 20, true);
          public          strapi    false    271            �           0    0    subscriptions_plan_links_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.subscriptions_plan_links_id_seq', 20, true);
          public          strapi    false    273            �           0    0    up_permissions_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.up_permissions_id_seq', 9, true);
          public          strapi    false    235            �           0    0     up_permissions_role_links_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 9, true);
          public          strapi    false    257            �           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          strapi    false    237            �           0    0    up_users_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_users_id_seq', 1, true);
          public          strapi    false    239            �           0    0    up_users_role_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, true);
          public          strapi    false    259            �           0    0    upload_folders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);
          public          strapi    false    233            �           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);
          public          strapi    false    255            �           0    0 %   usageledgers_entitlement_links_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.usageledgers_entitlement_links_id_seq', 1, false);
          public          strapi    false    283            �           0    0    usageledgers_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.usageledgers_id_seq', 1, false);
          public          strapi    false    281            �           2606    62687 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            strapi    false    218            �           2606    62832 >   admin_permissions_role_links admin_permissions_role_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_pkey;
       public            strapi    false    244            �           2606    62836 @   admin_permissions_role_links admin_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_unique;
       public            strapi    false    244    244            �           2606    62709    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            strapi    false    222            �           2606    62698    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            strapi    false    220            �           2606    62844 4   admin_users_roles_links admin_users_roles_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_pkey;
       public            strapi    false    246            �           2606    62848 6   admin_users_roles_links admin_users_roles_links_unique 
   CONSTRAINT     }   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_unique;
       public            strapi    false    246    246            -           2606    63160 0   components_a_features components_a_features_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.components_a_features
    ADD CONSTRAINT components_a_features_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.components_a_features DROP CONSTRAINT components_a_features_pkey;
       public            strapi    false    262            ;           2606    63235    entitlements entitlements_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.entitlements
    ADD CONSTRAINT entitlements_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.entitlements DROP CONSTRAINT entitlements_pkey;
       public            strapi    false    268            =           2606    63237 %   entitlements entitlements_slug_unique 
   CONSTRAINT     `   ALTER TABLE ONLY public.entitlements
    ADD CONSTRAINT entitlements_slug_unique UNIQUE (slug);
 O   ALTER TABLE ONLY public.entitlements DROP CONSTRAINT entitlements_slug_unique;
       public            strapi    false    268            Y           2606    63456 >   features_localizations_links features_localizations_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.features_localizations_links
    ADD CONSTRAINT features_localizations_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.features_localizations_links DROP CONSTRAINT features_localizations_links_pkey;
       public            strapi    false    278            [           2606    63460 @   features_localizations_links features_localizations_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.features_localizations_links
    ADD CONSTRAINT features_localizations_links_unique UNIQUE (feature_id, inv_feature_id);
 j   ALTER TABLE ONLY public.features_localizations_links DROP CONSTRAINT features_localizations_links_unique;
       public            strapi    false    278    278            S           2606    63447    features features_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.features
    ADD CONSTRAINT features_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.features DROP CONSTRAINT features_pkey;
       public            strapi    false    276            a           2606    63493 .   features_plans_links features_plans_links_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.features_plans_links
    ADD CONSTRAINT features_plans_links_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.features_plans_links DROP CONSTRAINT features_plans_links_pkey;
       public            strapi    false    280            c           2606    63497 0   features_plans_links features_plans_links_unique 
   CONSTRAINT     z   ALTER TABLE ONLY public.features_plans_links
    ADD CONSTRAINT features_plans_links_unique UNIQUE (feature_id, plan_id);
 Z   ALTER TABLE ONLY public.features_plans_links DROP CONSTRAINT features_plans_links_unique;
       public            strapi    false    280    280                       2606    62893 *   files_folder_links files_folder_links_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_pkey;
       public            strapi    false    254                       2606    62897 ,   files_folder_links files_folder_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_unique;
       public            strapi    false    254    254            �           2606    62760    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            strapi    false    232                       2606    62883 .   files_related_morphs files_related_morphs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
       public            strapi    false    252            �           2606    62823    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            strapi    false    242            ~           2606    63609 F   plan_ent_links_entitlement_links plan_ent_links_entitlement_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.plan_ent_links_entitlement_links
    ADD CONSTRAINT plan_ent_links_entitlement_links_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.plan_ent_links_entitlement_links DROP CONSTRAINT plan_ent_links_entitlement_links_pkey;
       public            strapi    false    290            �           2606    63613 H   plan_ent_links_entitlement_links plan_ent_links_entitlement_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.plan_ent_links_entitlement_links
    ADD CONSTRAINT plan_ent_links_entitlement_links_unique UNIQUE (plan_ent_link_id, entitlement_id);
 r   ALTER TABLE ONLY public.plan_ent_links_entitlement_links DROP CONSTRAINT plan_ent_links_entitlement_links_unique;
       public            strapi    false    290    290            q           2606    63588 "   plan_ent_links plan_ent_links_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.plan_ent_links
    ADD CONSTRAINT plan_ent_links_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.plan_ent_links DROP CONSTRAINT plan_ent_links_pkey;
       public            strapi    false    286            w           2606    63597 8   plan_ent_links_plan_links plan_ent_links_plan_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.plan_ent_links_plan_links
    ADD CONSTRAINT plan_ent_links_plan_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.plan_ent_links_plan_links DROP CONSTRAINT plan_ent_links_plan_links_pkey;
       public            strapi    false    288            y           2606    63601 :   plan_ent_links_plan_links plan_ent_links_plan_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.plan_ent_links_plan_links
    ADD CONSTRAINT plan_ent_links_plan_links_unique UNIQUE (plan_ent_link_id, plan_id);
 d   ALTER TABLE ONLY public.plan_ent_links_plan_links DROP CONSTRAINT plan_ent_links_plan_links_unique;
       public            strapi    false    288    288            C           2606    63273 6   plans_inherit_from_links plans_inherit_from_links_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.plans_inherit_from_links
    ADD CONSTRAINT plans_inherit_from_links_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.plans_inherit_from_links DROP CONSTRAINT plans_inherit_from_links_pkey;
       public            strapi    false    270            E           2606    63277 8   plans_inherit_from_links plans_inherit_from_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.plans_inherit_from_links
    ADD CONSTRAINT plans_inherit_from_links_unique UNIQUE (plan_id, inv_plan_id);
 b   ALTER TABLE ONLY public.plans_inherit_from_links DROP CONSTRAINT plans_inherit_from_links_unique;
       public            strapi    false    270    270            6           2606    63194 8   plans_localizations_links plans_localizations_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.plans_localizations_links
    ADD CONSTRAINT plans_localizations_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.plans_localizations_links DROP CONSTRAINT plans_localizations_links_pkey;
       public            strapi    false    266            8           2606    63198 :   plans_localizations_links plans_localizations_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.plans_localizations_links
    ADD CONSTRAINT plans_localizations_links_unique UNIQUE (plan_id, inv_plan_id);
 d   ALTER TABLE ONLY public.plans_localizations_links DROP CONSTRAINT plans_localizations_links_unique;
       public            strapi    false    266    266            0           2606    63171    plans plans_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.plans
    ADD CONSTRAINT plans_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.plans DROP CONSTRAINT plans_pkey;
       public            strapi    false    264            �           2606    62729 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public            strapi    false    226                       2606    62857 V   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_pkey;
       public            strapi    false    248                       2606    62861 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_unique;
       public            strapi    false    248    248            �           2606    62720 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            strapi    false    224            �           2606    62669 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            strapi    false    214            �           2606    62660 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            strapi    false    212            �           2606    62651 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            strapi    false    210            �           2606    62749 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
       public            strapi    false    230                       2606    62869 `   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_pkey;
       public            strapi    false    250            
           2606    62873 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_unique;
       public            strapi    false    250    250            �           2606    62740 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public            strapi    false    228            �           2606    62678 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            strapi    false    216            H           2606    63343     subscriptions subscriptions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.subscriptions DROP CONSTRAINT subscriptions_pkey;
       public            strapi    false    272            N           2606    63352 6   subscriptions_plan_links subscriptions_plan_links_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.subscriptions_plan_links
    ADD CONSTRAINT subscriptions_plan_links_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.subscriptions_plan_links DROP CONSTRAINT subscriptions_plan_links_pkey;
       public            strapi    false    274            P           2606    63356 8   subscriptions_plan_links subscriptions_plan_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.subscriptions_plan_links
    ADD CONSTRAINT subscriptions_plan_links_unique UNIQUE (subscription_id, plan_id);
 b   ALTER TABLE ONLY public.subscriptions_plan_links DROP CONSTRAINT subscriptions_plan_links_unique;
       public            strapi    false    274    274            �           2606    62790 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            strapi    false    236            "           2606    62917 8   up_permissions_role_links up_permissions_role_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_pkey;
       public            strapi    false    258            $           2606    62921 :   up_permissions_role_links up_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_unique;
       public            strapi    false    258    258            �           2606    62801    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            strapi    false    238            �           2606    62812    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            strapi    false    240            )           2606    62929 ,   up_users_role_links up_users_role_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_pkey;
       public            strapi    false    260            +           2606    62933 .   up_users_role_links up_users_role_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_unique;
       public            strapi    false    260    260                       2606    62905 <   upload_folders_parent_links upload_folders_parent_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_pkey;
       public            strapi    false    256                       2606    62909 >   upload_folders_parent_links upload_folders_parent_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_unique;
       public            strapi    false    256    256            �           2606    62779 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public            strapi    false    234            �           2606    62781 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public            strapi    false    234            �           2606    62777 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public            strapi    false    234            l           2606    63552 B   usageledgers_entitlement_links usageledgers_entitlement_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.usageledgers_entitlement_links
    ADD CONSTRAINT usageledgers_entitlement_links_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.usageledgers_entitlement_links DROP CONSTRAINT usageledgers_entitlement_links_pkey;
       public            strapi    false    284            n           2606    63556 D   usageledgers_entitlement_links usageledgers_entitlement_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.usageledgers_entitlement_links
    ADD CONSTRAINT usageledgers_entitlement_links_unique UNIQUE (usageledger_id, entitlement_id);
 n   ALTER TABLE ONLY public.usageledgers_entitlement_links DROP CONSTRAINT usageledgers_entitlement_links_unique;
       public            strapi    false    284    284            f           2606    63543    usageledgers usageledgers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usageledgers
    ADD CONSTRAINT usageledgers_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.usageledgers DROP CONSTRAINT usageledgers_pkey;
       public            strapi    false    282            �           1259    62688 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            strapi    false    218            �           1259    62833    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            strapi    false    244            �           1259    62834 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            strapi    false    244            �           1259    62837 )   admin_permissions_role_links_order_inv_fk    INDEX     ~   CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);
 =   DROP INDEX public.admin_permissions_role_links_order_inv_fk;
       public            strapi    false    244            �           1259    62689 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            strapi    false    218            �           1259    62710    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            strapi    false    222            �           1259    62711    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            strapi    false    222            �           1259    62699    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            strapi    false    220            �           1259    62845    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            strapi    false    246            �           1259    62846    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            strapi    false    246            �           1259    62849     admin_users_roles_links_order_fk    INDEX     j   CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);
 4   DROP INDEX public.admin_users_roles_links_order_fk;
       public            strapi    false    246            �           1259    62850 $   admin_users_roles_links_order_inv_fk    INDEX     n   CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);
 8   DROP INDEX public.admin_users_roles_links_order_inv_fk;
       public            strapi    false    246            �           1259    62700    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            strapi    false    220            9           1259    63238    entitlements_created_by_id_fk    INDEX     _   CREATE INDEX entitlements_created_by_id_fk ON public.entitlements USING btree (created_by_id);
 1   DROP INDEX public.entitlements_created_by_id_fk;
       public            strapi    false    268            >           1259    63239    entitlements_updated_by_id_fk    INDEX     _   CREATE INDEX entitlements_updated_by_id_fk ON public.entitlements USING btree (updated_by_id);
 1   DROP INDEX public.entitlements_updated_by_id_fk;
       public            strapi    false    268            Q           1259    63448    features_created_by_id_fk    INDEX     W   CREATE INDEX features_created_by_id_fk ON public.features USING btree (created_by_id);
 -   DROP INDEX public.features_created_by_id_fk;
       public            strapi    false    276            U           1259    63457    features_localizations_links_fk    INDEX     n   CREATE INDEX features_localizations_links_fk ON public.features_localizations_links USING btree (feature_id);
 3   DROP INDEX public.features_localizations_links_fk;
       public            strapi    false    278            V           1259    63458 #   features_localizations_links_inv_fk    INDEX     v   CREATE INDEX features_localizations_links_inv_fk ON public.features_localizations_links USING btree (inv_feature_id);
 7   DROP INDEX public.features_localizations_links_inv_fk;
       public            strapi    false    278            W           1259    63461 %   features_localizations_links_order_fk    INDEX     w   CREATE INDEX features_localizations_links_order_fk ON public.features_localizations_links USING btree (feature_order);
 9   DROP INDEX public.features_localizations_links_order_fk;
       public            strapi    false    278            \           1259    63494    features_plans_links_fk    INDEX     ^   CREATE INDEX features_plans_links_fk ON public.features_plans_links USING btree (feature_id);
 +   DROP INDEX public.features_plans_links_fk;
       public            strapi    false    280            ]           1259    63495    features_plans_links_inv_fk    INDEX     _   CREATE INDEX features_plans_links_inv_fk ON public.features_plans_links USING btree (plan_id);
 /   DROP INDEX public.features_plans_links_inv_fk;
       public            strapi    false    280            ^           1259    63498    features_plans_links_order_fk    INDEX     d   CREATE INDEX features_plans_links_order_fk ON public.features_plans_links USING btree (plan_order);
 1   DROP INDEX public.features_plans_links_order_fk;
       public            strapi    false    280            _           1259    63499 !   features_plans_links_order_inv_fk    INDEX     k   CREATE INDEX features_plans_links_order_inv_fk ON public.features_plans_links USING btree (feature_order);
 5   DROP INDEX public.features_plans_links_order_inv_fk;
       public            strapi    false    280            T           1259    63449    features_updated_by_id_fk    INDEX     W   CREATE INDEX features_updated_by_id_fk ON public.features USING btree (updated_by_id);
 -   DROP INDEX public.features_updated_by_id_fk;
       public            strapi    false    276            �           1259    62767    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            strapi    false    232                       1259    62894    files_folder_links_fk    INDEX     W   CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);
 )   DROP INDEX public.files_folder_links_fk;
       public            strapi    false    254                       1259    62895    files_folder_links_inv_fk    INDEX     ]   CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);
 -   DROP INDEX public.files_folder_links_inv_fk;
       public            strapi    false    254                       1259    62898    files_folder_links_order_inv_fk    INDEX     d   CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);
 3   DROP INDEX public.files_folder_links_order_inv_fk;
       public            strapi    false    254                       1259    62884    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            strapi    false    252                       1259    62886 $   files_related_morphs_id_column_index    INDEX     k   CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);
 8   DROP INDEX public.files_related_morphs_id_column_index;
       public            strapi    false    252                       1259    62885     files_related_morphs_order_index    INDEX     d   CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");
 4   DROP INDEX public.files_related_morphs_order_index;
       public            strapi    false    252            �           1259    62768    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            strapi    false    232            �           1259    62824    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            strapi    false    242            �           1259    62825    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            strapi    false    242            o           1259    63589    plan_ent_links_created_by_id_fk    INDEX     c   CREATE INDEX plan_ent_links_created_by_id_fk ON public.plan_ent_links USING btree (created_by_id);
 3   DROP INDEX public.plan_ent_links_created_by_id_fk;
       public            strapi    false    286            z           1259    63610 #   plan_ent_links_entitlement_links_fk    INDEX     |   CREATE INDEX plan_ent_links_entitlement_links_fk ON public.plan_ent_links_entitlement_links USING btree (plan_ent_link_id);
 7   DROP INDEX public.plan_ent_links_entitlement_links_fk;
       public            strapi    false    290            {           1259    63611 '   plan_ent_links_entitlement_links_inv_fk    INDEX     ~   CREATE INDEX plan_ent_links_entitlement_links_inv_fk ON public.plan_ent_links_entitlement_links USING btree (entitlement_id);
 ;   DROP INDEX public.plan_ent_links_entitlement_links_inv_fk;
       public            strapi    false    290            |           1259    63614 -   plan_ent_links_entitlement_links_order_inv_fk    INDEX     �   CREATE INDEX plan_ent_links_entitlement_links_order_inv_fk ON public.plan_ent_links_entitlement_links USING btree (plan_ent_link_order);
 A   DROP INDEX public.plan_ent_links_entitlement_links_order_inv_fk;
       public            strapi    false    290            s           1259    63598    plan_ent_links_plan_links_fk    INDEX     n   CREATE INDEX plan_ent_links_plan_links_fk ON public.plan_ent_links_plan_links USING btree (plan_ent_link_id);
 0   DROP INDEX public.plan_ent_links_plan_links_fk;
       public            strapi    false    288            t           1259    63599     plan_ent_links_plan_links_inv_fk    INDEX     i   CREATE INDEX plan_ent_links_plan_links_inv_fk ON public.plan_ent_links_plan_links USING btree (plan_id);
 4   DROP INDEX public.plan_ent_links_plan_links_inv_fk;
       public            strapi    false    288            u           1259    63602 &   plan_ent_links_plan_links_order_inv_fk    INDEX     {   CREATE INDEX plan_ent_links_plan_links_order_inv_fk ON public.plan_ent_links_plan_links USING btree (plan_ent_link_order);
 :   DROP INDEX public.plan_ent_links_plan_links_order_inv_fk;
       public            strapi    false    288            r           1259    63590    plan_ent_links_updated_by_id_fk    INDEX     c   CREATE INDEX plan_ent_links_updated_by_id_fk ON public.plan_ent_links USING btree (updated_by_id);
 3   DROP INDEX public.plan_ent_links_updated_by_id_fk;
       public            strapi    false    286            .           1259    63172    plans_created_by_id_fk    INDEX     Q   CREATE INDEX plans_created_by_id_fk ON public.plans USING btree (created_by_id);
 *   DROP INDEX public.plans_created_by_id_fk;
       public            strapi    false    264            ?           1259    63274    plans_inherit_from_links_fk    INDEX     c   CREATE INDEX plans_inherit_from_links_fk ON public.plans_inherit_from_links USING btree (plan_id);
 /   DROP INDEX public.plans_inherit_from_links_fk;
       public            strapi    false    270            @           1259    63275    plans_inherit_from_links_inv_fk    INDEX     k   CREATE INDEX plans_inherit_from_links_inv_fk ON public.plans_inherit_from_links USING btree (inv_plan_id);
 3   DROP INDEX public.plans_inherit_from_links_inv_fk;
       public            strapi    false    270            A           1259    63278 %   plans_inherit_from_links_order_inv_fk    INDEX     p   CREATE INDEX plans_inherit_from_links_order_inv_fk ON public.plans_inherit_from_links USING btree (plan_order);
 9   DROP INDEX public.plans_inherit_from_links_order_inv_fk;
       public            strapi    false    270            2           1259    63195    plans_localizations_links_fk    INDEX     e   CREATE INDEX plans_localizations_links_fk ON public.plans_localizations_links USING btree (plan_id);
 0   DROP INDEX public.plans_localizations_links_fk;
       public            strapi    false    266            3           1259    63196     plans_localizations_links_inv_fk    INDEX     m   CREATE INDEX plans_localizations_links_inv_fk ON public.plans_localizations_links USING btree (inv_plan_id);
 4   DROP INDEX public.plans_localizations_links_inv_fk;
       public            strapi    false    266            4           1259    63199 "   plans_localizations_links_order_fk    INDEX     n   CREATE INDEX plans_localizations_links_order_fk ON public.plans_localizations_links USING btree (plan_order);
 6   DROP INDEX public.plans_localizations_links_order_fk;
       public            strapi    false    266            1           1259    63173    plans_updated_by_id_fk    INDEX     Q   CREATE INDEX plans_updated_by_id_fk ON public.plans USING btree (updated_by_id);
 *   DROP INDEX public.plans_updated_by_id_fk;
       public            strapi    false    264            �           1259    62730 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            strapi    false    226            �           1259    62858 +   strapi_api_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);
 ?   DROP INDEX public.strapi_api_token_permissions_token_links_fk;
       public            strapi    false    248            �           1259    62859 /   strapi_api_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);
 C   DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
       public            strapi    false    248            �           1259    62862 5   strapi_api_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);
 I   DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
       public            strapi    false    248            �           1259    62731 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            strapi    false    226            �           1259    62721 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            strapi    false    224            �           1259    62722 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            strapi    false    224            �           1259    62750 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public            strapi    false    230                       1259    62870 0   strapi_transfer_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_links_fk;
       public            strapi    false    250                       1259    62871 4   strapi_transfer_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);
 H   DROP INDEX public.strapi_transfer_token_permissions_token_links_inv_fk;
       public            strapi    false    250                       1259    62874 :   strapi_transfer_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);
 N   DROP INDEX public.strapi_transfer_token_permissions_token_links_order_inv_fk;
       public            strapi    false    250            �           1259    62751 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public            strapi    false    230            �           1259    62741 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public            strapi    false    228            �           1259    62742 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public            strapi    false    228            F           1259    63344    subscriptions_created_by_id_fk    INDEX     a   CREATE INDEX subscriptions_created_by_id_fk ON public.subscriptions USING btree (created_by_id);
 2   DROP INDEX public.subscriptions_created_by_id_fk;
       public            strapi    false    272            J           1259    63353    subscriptions_plan_links_fk    INDEX     k   CREATE INDEX subscriptions_plan_links_fk ON public.subscriptions_plan_links USING btree (subscription_id);
 /   DROP INDEX public.subscriptions_plan_links_fk;
       public            strapi    false    274            K           1259    63354    subscriptions_plan_links_inv_fk    INDEX     g   CREATE INDEX subscriptions_plan_links_inv_fk ON public.subscriptions_plan_links USING btree (plan_id);
 3   DROP INDEX public.subscriptions_plan_links_inv_fk;
       public            strapi    false    274            L           1259    63357 %   subscriptions_plan_links_order_inv_fk    INDEX     x   CREATE INDEX subscriptions_plan_links_order_inv_fk ON public.subscriptions_plan_links USING btree (subscription_order);
 9   DROP INDEX public.subscriptions_plan_links_order_inv_fk;
       public            strapi    false    274            I           1259    63345    subscriptions_updated_by_id_fk    INDEX     a   CREATE INDEX subscriptions_updated_by_id_fk ON public.subscriptions USING btree (updated_by_id);
 2   DROP INDEX public.subscriptions_updated_by_id_fk;
       public            strapi    false    272            �           1259    62791    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            strapi    false    236                       1259    62918    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            strapi    false    258                       1259    62919     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            strapi    false    258                        1259    62922 &   up_permissions_role_links_order_inv_fk    INDEX     x   CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);
 :   DROP INDEX public.up_permissions_role_links_order_inv_fk;
       public            strapi    false    258            �           1259    62792    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            strapi    false    236            �           1259    62802    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            strapi    false    238            �           1259    62803    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            strapi    false    238            �           1259    62813    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            strapi    false    240            %           1259    62930    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            strapi    false    260            &           1259    62931    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            strapi    false    260            '           1259    62934     up_users_role_links_order_inv_fk    INDEX     f   CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);
 4   DROP INDEX public.up_users_role_links_order_inv_fk;
       public            strapi    false    260            �           1259    62814    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            strapi    false    240            �           1259    62762    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public            strapi    false    232            �           1259    62766    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public            strapi    false    232            �           1259    62761    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public            strapi    false    232            �           1259    62764    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public            strapi    false    232            �           1259    62765    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public            strapi    false    232            �           1259    62763    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public            strapi    false    232            �           1259    62782    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public            strapi    false    234                       1259    62906    upload_folders_parent_links_fk    INDEX     k   CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);
 2   DROP INDEX public.upload_folders_parent_links_fk;
       public            strapi    false    256                       1259    62907 "   upload_folders_parent_links_inv_fk    INDEX     s   CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);
 6   DROP INDEX public.upload_folders_parent_links_inv_fk;
       public            strapi    false    256                       1259    62910 (   upload_folders_parent_links_order_inv_fk    INDEX     x   CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);
 <   DROP INDEX public.upload_folders_parent_links_order_inv_fk;
       public            strapi    false    256            �           1259    62783    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public            strapi    false    234            d           1259    63544    usageledgers_created_by_id_fk    INDEX     _   CREATE INDEX usageledgers_created_by_id_fk ON public.usageledgers USING btree (created_by_id);
 1   DROP INDEX public.usageledgers_created_by_id_fk;
       public            strapi    false    282            h           1259    63553 !   usageledgers_entitlement_links_fk    INDEX     v   CREATE INDEX usageledgers_entitlement_links_fk ON public.usageledgers_entitlement_links USING btree (usageledger_id);
 5   DROP INDEX public.usageledgers_entitlement_links_fk;
       public            strapi    false    284            i           1259    63554 %   usageledgers_entitlement_links_inv_fk    INDEX     z   CREATE INDEX usageledgers_entitlement_links_inv_fk ON public.usageledgers_entitlement_links USING btree (entitlement_id);
 9   DROP INDEX public.usageledgers_entitlement_links_inv_fk;
       public            strapi    false    284            j           1259    63557 +   usageledgers_entitlement_links_order_inv_fk    INDEX     �   CREATE INDEX usageledgers_entitlement_links_order_inv_fk ON public.usageledgers_entitlement_links USING btree (usageledger_order);
 ?   DROP INDEX public.usageledgers_entitlement_links_order_inv_fk;
       public            strapi    false    284            g           1259    63545    usageledgers_updated_by_id_fk    INDEX     _   CREATE INDEX usageledgers_updated_by_id_fk ON public.usageledgers USING btree (updated_by_id);
 1   DROP INDEX public.usageledgers_updated_by_id_fk;
       public            strapi    false    282            �           2606    62935 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          strapi    false    4022    220    218            �           2606    63065 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          strapi    false    4018    218    244            �           2606    63070 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          strapi    false    244    222    4026            �           2606    62940 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          strapi    false    4022    218    220            �           2606    62955 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          strapi    false    4022    222    220            �           2606    62960 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          strapi    false    4022    222    220            �           2606    62945 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          strapi    false    4022    220    220            �           2606    63075 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          strapi    false    4022    246    220            �           2606    63080 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          strapi    false    222    4026    246            �           2606    62950 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          strapi    false    220    220    4022            �           2606    63240 *   entitlements entitlements_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.entitlements
    ADD CONSTRAINT entitlements_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.entitlements DROP CONSTRAINT entitlements_created_by_id_fk;
       public          strapi    false    268    4022    220            �           2606    63245 *   entitlements entitlements_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.entitlements
    ADD CONSTRAINT entitlements_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.entitlements DROP CONSTRAINT entitlements_updated_by_id_fk;
       public          strapi    false    4022    268    220            �           2606    63462 "   features features_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.features
    ADD CONSTRAINT features_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.features DROP CONSTRAINT features_created_by_id_fk;
       public          strapi    false    4022    220    276            �           2606    63472 <   features_localizations_links features_localizations_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.features_localizations_links
    ADD CONSTRAINT features_localizations_links_fk FOREIGN KEY (feature_id) REFERENCES public.features(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.features_localizations_links DROP CONSTRAINT features_localizations_links_fk;
       public          strapi    false    278    4179    276            �           2606    63477 @   features_localizations_links features_localizations_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.features_localizations_links
    ADD CONSTRAINT features_localizations_links_inv_fk FOREIGN KEY (inv_feature_id) REFERENCES public.features(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.features_localizations_links DROP CONSTRAINT features_localizations_links_inv_fk;
       public          strapi    false    4179    276    278            �           2606    63513 ,   features_plans_links features_plans_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.features_plans_links
    ADD CONSTRAINT features_plans_links_fk FOREIGN KEY (feature_id) REFERENCES public.features(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.features_plans_links DROP CONSTRAINT features_plans_links_fk;
       public          strapi    false    280    4179    276            �           2606    63518 0   features_plans_links features_plans_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.features_plans_links
    ADD CONSTRAINT features_plans_links_inv_fk FOREIGN KEY (plan_id) REFERENCES public.plans(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.features_plans_links DROP CONSTRAINT features_plans_links_inv_fk;
       public          strapi    false    4144    280    264            �           2606    63467 "   features features_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.features
    ADD CONSTRAINT features_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.features DROP CONSTRAINT features_updated_by_id_fk;
       public          strapi    false    220    276    4022            �           2606    63005    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          strapi    false    4022    220    232            �           2606    63110 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          strapi    false    254    232    4046            �           2606    63115 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          strapi    false    254    234    4060            �           2606    63105 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          strapi    false    252    4046    232            �           2606    63010    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          strapi    false    4022    232    220            �           2606    63055 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          strapi    false    242    220    4022            �           2606    63060 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          strapi    false    220    242    4022            �           2606    63615 .   plan_ent_links plan_ent_links_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plan_ent_links
    ADD CONSTRAINT plan_ent_links_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.plan_ent_links DROP CONSTRAINT plan_ent_links_created_by_id_fk;
       public          strapi    false    220    286    4022            �           2606    63635 D   plan_ent_links_entitlement_links plan_ent_links_entitlement_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plan_ent_links_entitlement_links
    ADD CONSTRAINT plan_ent_links_entitlement_links_fk FOREIGN KEY (plan_ent_link_id) REFERENCES public.plan_ent_links(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.plan_ent_links_entitlement_links DROP CONSTRAINT plan_ent_links_entitlement_links_fk;
       public          strapi    false    290    286    4209            �           2606    63640 H   plan_ent_links_entitlement_links plan_ent_links_entitlement_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plan_ent_links_entitlement_links
    ADD CONSTRAINT plan_ent_links_entitlement_links_inv_fk FOREIGN KEY (entitlement_id) REFERENCES public.entitlements(id) ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.plan_ent_links_entitlement_links DROP CONSTRAINT plan_ent_links_entitlement_links_inv_fk;
       public          strapi    false    4155    290    268            �           2606    63625 6   plan_ent_links_plan_links plan_ent_links_plan_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plan_ent_links_plan_links
    ADD CONSTRAINT plan_ent_links_plan_links_fk FOREIGN KEY (plan_ent_link_id) REFERENCES public.plan_ent_links(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.plan_ent_links_plan_links DROP CONSTRAINT plan_ent_links_plan_links_fk;
       public          strapi    false    286    4209    288            �           2606    63630 :   plan_ent_links_plan_links plan_ent_links_plan_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plan_ent_links_plan_links
    ADD CONSTRAINT plan_ent_links_plan_links_inv_fk FOREIGN KEY (plan_id) REFERENCES public.plans(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.plan_ent_links_plan_links DROP CONSTRAINT plan_ent_links_plan_links_inv_fk;
       public          strapi    false    4144    264    288            �           2606    63620 .   plan_ent_links plan_ent_links_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plan_ent_links
    ADD CONSTRAINT plan_ent_links_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.plan_ent_links DROP CONSTRAINT plan_ent_links_updated_by_id_fk;
       public          strapi    false    4022    286    220            �           2606    63200    plans plans_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plans
    ADD CONSTRAINT plans_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.plans DROP CONSTRAINT plans_created_by_id_fk;
       public          strapi    false    4022    220    264            �           2606    63289 4   plans_inherit_from_links plans_inherit_from_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plans_inherit_from_links
    ADD CONSTRAINT plans_inherit_from_links_fk FOREIGN KEY (plan_id) REFERENCES public.plans(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.plans_inherit_from_links DROP CONSTRAINT plans_inherit_from_links_fk;
       public          strapi    false    264    4144    270            �           2606    63294 8   plans_inherit_from_links plans_inherit_from_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plans_inherit_from_links
    ADD CONSTRAINT plans_inherit_from_links_inv_fk FOREIGN KEY (inv_plan_id) REFERENCES public.plans(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.plans_inherit_from_links DROP CONSTRAINT plans_inherit_from_links_inv_fk;
       public          strapi    false    4144    270    264            �           2606    63215 6   plans_localizations_links plans_localizations_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plans_localizations_links
    ADD CONSTRAINT plans_localizations_links_fk FOREIGN KEY (plan_id) REFERENCES public.plans(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.plans_localizations_links DROP CONSTRAINT plans_localizations_links_fk;
       public          strapi    false    266    4144    264            �           2606    63220 :   plans_localizations_links plans_localizations_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plans_localizations_links
    ADD CONSTRAINT plans_localizations_links_inv_fk FOREIGN KEY (inv_plan_id) REFERENCES public.plans(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.plans_localizations_links DROP CONSTRAINT plans_localizations_links_inv_fk;
       public          strapi    false    266    4144    264            �           2606    63205    plans plans_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plans
    ADD CONSTRAINT plans_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.plans DROP CONSTRAINT plans_updated_by_id_fk;
       public          strapi    false    264    4022    220            �           2606    62975 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          strapi    false    220    226    4022            �           2606    63085 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          strapi    false    248    4034    226            �           2606    63090 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          strapi    false    4030    248    224            �           2606    62980 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          strapi    false    220    226    4022            �           2606    62965 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          strapi    false    224    4022    220            �           2606    62970 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          strapi    false    224    220    4022            �           2606    62995 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public          strapi    false    220    230    4022            �           2606    63095 ^   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk    FK CONSTRAINT        ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_fk;
       public          strapi    false    4042    230    250            �           2606    63100 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk;
       public          strapi    false    4038    228    250            �           2606    63000 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public          strapi    false    220    230    4022            �           2606    62985 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public          strapi    false    220    228    4022            �           2606    62990 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public          strapi    false    4022    228    220            �           2606    63358 ,   subscriptions subscriptions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.subscriptions DROP CONSTRAINT subscriptions_created_by_id_fk;
       public          strapi    false    220    272    4022            �           2606    63368 4   subscriptions_plan_links subscriptions_plan_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subscriptions_plan_links
    ADD CONSTRAINT subscriptions_plan_links_fk FOREIGN KEY (subscription_id) REFERENCES public.subscriptions(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.subscriptions_plan_links DROP CONSTRAINT subscriptions_plan_links_fk;
       public          strapi    false    274    272    4168            �           2606    63373 8   subscriptions_plan_links subscriptions_plan_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subscriptions_plan_links
    ADD CONSTRAINT subscriptions_plan_links_inv_fk FOREIGN KEY (plan_id) REFERENCES public.plans(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.subscriptions_plan_links DROP CONSTRAINT subscriptions_plan_links_inv_fk;
       public          strapi    false    274    4144    264            �           2606    63363 ,   subscriptions subscriptions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.subscriptions DROP CONSTRAINT subscriptions_updated_by_id_fk;
       public          strapi    false    220    272    4022            �           2606    63025 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          strapi    false    4022    236    220            �           2606    63130 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          strapi    false    258    236    4064            �           2606    63135 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          strapi    false    238    258    4068            �           2606    63030 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          strapi    false    220    236    4022            �           2606    63035 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          strapi    false    220    238    4022            �           2606    63040 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          strapi    false    220    238    4022            �           2606    63045 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          strapi    false    220    240    4022            �           2606    63140 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          strapi    false    4072    240    260            �           2606    63145 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          strapi    false    260    238    4068            �           2606    63050 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          strapi    false    240    4022    220            �           2606    63015 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          strapi    false    220    4022    234            �           2606    63120 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          strapi    false    256    4060    234            �           2606    63125 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          strapi    false    256    234    4060            �           2606    63020 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          strapi    false    234    220    4022            �           2606    63558 *   usageledgers usageledgers_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.usageledgers
    ADD CONSTRAINT usageledgers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.usageledgers DROP CONSTRAINT usageledgers_created_by_id_fk;
       public          strapi    false    220    4022    282            �           2606    63568 @   usageledgers_entitlement_links usageledgers_entitlement_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.usageledgers_entitlement_links
    ADD CONSTRAINT usageledgers_entitlement_links_fk FOREIGN KEY (usageledger_id) REFERENCES public.usageledgers(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.usageledgers_entitlement_links DROP CONSTRAINT usageledgers_entitlement_links_fk;
       public          strapi    false    282    284    4198            �           2606    63573 D   usageledgers_entitlement_links usageledgers_entitlement_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.usageledgers_entitlement_links
    ADD CONSTRAINT usageledgers_entitlement_links_inv_fk FOREIGN KEY (entitlement_id) REFERENCES public.entitlements(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.usageledgers_entitlement_links DROP CONSTRAINT usageledgers_entitlement_links_inv_fk;
       public          strapi    false    268    4155    284            �           2606    63563 *   usageledgers usageledgers_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.usageledgers
    ADD CONSTRAINT usageledgers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.usageledgers DROP CONSTRAINT usageledgers_updated_by_id_fk;
       public          strapi    false    4022    220    282            \     x��ZMo�8='�"�yM��(Q�-�{�K��vOmQ(�j#K�$'-���K��[C�� i�Kl����g�#J��P��2I���J3R�4����Շ7����W���m����$��@�|+�~��͵λ�ʻ��X��c.�b�y܊v��6�l�S�rQ�
aō@`82�7�"�UO���(�ClB[����m���
Q@��шh�f{�߼�v+S�\*��77R�99�=�ň3���9���IZ�� �\��-n�<��Q��DS\a�kh4f�.������8��5����e�ݧez/k"�(�Z��j���u�=�z�7M^�*�
�����e�5����F#e���_n6r��~s���<�u�^��Tՙ~_K��[ �U��h���>m��9(���������Bn>ZBA	��Pˡ�+��1�) ��ˁ����{x(4��C��B���jH(�.gp0$����}!��׃l��oJ^b�	a��UE!wz���O� ��A<� �?T�B��E��:���>Ü68LZ�LX���=�E6�ed�30��[HW
De{���q�=f�A`�8Gۘ�ϙS�+�qPxΠș�ٳI���7)*.``p�x氨ȸ�5���lZ\U��Dh48H̦�5�ʈ�� ��B��M�1��+op�����
T���28(�E%�|H@q-�����5�S�x�ki���~7w�b���A-pRs�da�np����N�m��P(5'��:�np�Wh:y��<��jT��i���;�m��:'WGO�*MG_�����_r*J�&Ĵ�n=�a���Ug��;Eٝb�~��S~�w���A8�Ɓ�]���>�d��x����'������q�Ia�����ϸ����M���Θ��3"�a�hp��f�NK�n3n�sw����bp �O����#���)�c��|bzJ�_A<td08�=�G�b��)�C|ah�h�SZ��#�X�@�O�#�C���x����o[}��6��N6�"{���#��icB=l�48���a%c⣽���#�N�� ;5��=��{Y��E!���(8eML�w0pU����]3����{/̪�����8(���i��ɚ8�G���}8Hp��rtT|^a�M�)L�|�p�l�k-�,W$����Pt�xᬤdb��r]tT���8ܪr�}0���T�]�%���m̤iΆe����ċ/$��d��%�R�%�;y[Ƚz%��H@xB�ċ�b+��n"���o�]��Q*�~@��R��=��`��!�X�K�L��M��o5�����ԯM��Ǧ;��r�k���֟�:Wf��;��iwbl~�]ζ3X��m��Y>�^���gD܊��'�}�x]��;�0'8x�Pc;{m���Y���0]]�w���$�؞���z"%tz|������qn�d 엠1�ַ�>��.[������-�߆�+�%�"�n�����wq�j�%,��Gdgxo��:W���w!3����˵;���.js�����S���
�;�6^�����YqK����ռ$�x��^r�I����b�a�ޑ�C���<�V��e�S'�ظ�_����ɧӠ��Y0�|��>ʺγ���o|�x\um5A�V��~�h�2�$̊��;4�T~�U��6�Tɡ�#Vۭ��XX�����,�����O�4�\�NJ��p�f�����-��K�E�x|bF�y5�f���'�n�F�g�
�P�<�G��w��4��C<<�Uvܵ����gev�鮮�]�����~�m���v�u�5� �^f�����1���`aqؼ���x���9t�����fE�W���ޮ��Ɯ8y����ꉺ</ŋ@�s[?0���お�8} �����ȩ      v   �  x�%�ۭd1��`V�i���?��>��Ȳd(�k���a�i�5QV\m͵16\�.O8�=���rM�1F2���ga�b�3��</S0���S(��B���]S�Ec�=��-�M�*�� �������D�
�x!��@ވg!�b-���e��d���"y�� yk�e�݉�kK�"�c)Z�3-ɱ����D��:V��Cq�Ţ� ��Aq�����4�e���!�k�D�B]+ѲQ�J��Z��}�Eˇ�E�E�E����V�.k�*�tA�J�X/FA��h��g-Zz�E��96����=E��P&��`h�h혲��6�ub(�h]�k�	B#��h=���/n�U�q\����زU�{�m���a�Vu�b��ξC�e��|��ϖ�B��R_�ϖKu}��Q��{�!�{�2>��$[����?=���?��OGz��g$Uw	�I���?��/`Mi���~��?;�ڻ��e{���?j��c      `   �   x�u��n� @g����Q�]�d�r�K������%A�Z�����{�S�P��}8�X".����~3��3���@�w�g�J�T8���wnT�vCݎu�a��xԇ��&�|�Uu��:	q��2X*Vu�-�:;��/��y3'�@���A����7����%�W������2�'*�֘��&|f���_?��&/�KSU�7f#~�      ^   �   x�3�LL�������҂�����Լ���ĢԼ�̼��L��DN�DC�Ȉ��P�"�B�Bs��b��p�$������@'��
�|?��̠Ԭ$�t�4�`��%�i ����T��\��D��������P����8X3W� �0�      x      x�3�4�@�=... �      �   %   x��I   �?a��.��!D��v%�Ti�W�E$      �   �   x�u�A�  ��
> ),��ͣ_�%DI�4���Ʀ6���L��&yKl\���Jt#�EMI��@t\0�������u�@������_W�# �VP��@��ݘ�x'9�gڙ�|�(��YT}��������b�;�/�E�㚝���"���J���!fd<ݾ�e�my�ўa��m�t�      �   ]  x�m��N� �5</0�(;c���h�K7�Jg�-4�c���F�5t�M�����[�'W����)�h����9�؍�&wD�DT[�,�W��/��Kh~\ 4�������r�>�s��Lc%h�
K&z��E�}=��_�&�����\Z��6j{ U���r �l=�w�ޥ��?�T����*��%6����g��<��%�m㩛_KZ[��4����/4��3�����w�qȇ��O�Oe��XRa���I��Jp�<-ߝ��Ű]��%Ӎ*�j�/��
����<m֌XN�dW��~�.�RP�����s��	=�m烛-\c%�J�-��e�R�w!����U      �      x������ � �      �   >   x�%��� ���a*� �t�9Z�c�CG�i���&.��7��IyY�e�V��h��|;A      j      x������ � �      �      x������ � �      ~      x������ � �      t   ;   x�3�t�K��,�P�H���L��4202�50�50Q04�21"=KKS��1~@����� ��q      �   O   x�u���0��,�(qkh;��AA���:�l|,~熘��X���!�!}s���ƶ?^��1����[;MU/���      �   "   x�3�4�4�4�2�4�F\Ɯ�@ژ+F��� 4�y      �      x�3�4�4�4�2�C.cN4����� 4.o      �   �   x�3�t+JMU�I��L/H�M�t@<##S]s]C3++=��@����A\F�I�ř�
��y%9�
`C�B�P!l� ������Nqt{�9�Rs3Ks"S����R ׭�c�����R���Wqt�b���� �MS      �      x�3�4�4�4�2�4��b���� @�      �      x������ � �      d      x������ � �      z      x������ � �      b   �   x�]�A�1ϞW�$˲�yľ ٖN��L��'�=-]���1�~�=?~��R���mN?ϤkF��C�O Sn���diŖu��Њ8�x8iHQ%�A�I]�����i�a����,�� ����+�6�*-]�(P8�d�l��e���@;��}m�}۶7��;u      X      x��]�7���y
����P+n�v2�Lv�����`�p��D�8]�R�ҝ�!`_c_o�dy/^K,IՖmb��V�uxH��w�S�Óu�\�|�y��z�J��
���_5eR�-��֨:?O�+���7*O>�<���g�ɸBu��j|�a|�d��e���u٠�x�����
%e�ԟ�	����ك�x����2���U�'+DZ��E�d�뢬��,焩����?�7���yR'�9���1���K
3\ѿ�Yr�2�)������f3��n�)*&cUZ�5WRB��$E�"�L�7��Z[��֖ˣN=��,�s�ʆ`T#�'�%��l>5�!|""��$/�CI9��uRU�E9�8TeC0��D�j\�w��(�8j��}�dU�`;aݸ"�����]i�N�̈́�WO�߀��ʆ�x�X���e{sh�f�Q���jYf(ϗY�^#Pe�#���%Z�͟'�UC|1h;�:������%5�?�!���A�N'���s?�m� ���{�+E[�q%����}��f��o�m��Aov{��+���>N���:���B4�'����}��t?�LT��D��I�����wL^�с��X�#�]eq�53�Y����椸�J��^����f��(Y�Ӛz\;@R�FI� �#�F>?��ލ�]��!85�0L��=�EA8��$MQU����-�K�zh���]�t�@X��c�\�"�pW/>0�MRF�fF�a����$���-$d֨	^�j��VA�"-�u#ԍP�u� �#r���� R��y��9����w^�(@��Y.2����}���8���YĮG�]�b�ƞ�� �Y�jȂ��Vu�H�b��\�a2�|�@�ڽ��4� ��1��X��aJq�ƣ}�Fۈ7ڒAA�0e.�
�x������ܦ"��ERA�=�ө3�F#a.�j�C�ˢ!�mi���D	j�tj���i��x��>8���P5�a���Ƴ�|h�Ե��{"L�0��Zߤ�'S$�uD�
�43�"�2B�!�����T�e�WT���S?��V���� W�K(��'�����d�]Ew�e�+�-�4y�6:W��uO�&�}à!.����11$p�?&����p�Đ��"�
�O1�T��%�L�S@�o�L:S@���$��v��Mg��
TS`)!�r\N8�儸�=Z�h��єRe�y)a������H�Sbȑ�ڲ��p�	�<��Y�A��ʮ2��r��Y�w�C����Y����z	���`PRao����wQ2��tЩE�JjpiCr����z�L*p���A�:��존9\�W6����	�!�q	d�烤q�AH��@�Ss��xh�F�oa��ҁ
h��U�`��T��J�����9� ���Ґ�뭄ȅh2��A:,�T��9Z�"�]�V:�����8�18�^�u���{-���ꪅ���(Z�j�J��X"��)�� �߻_+N�S~���pP?[��`E�"ƙ��/:��j����K2y+�g�Ŝ\��u�Wd�&���U^�4u��(��+ܯY�>���e.����u*��<��]��k&X�v�����u�D����������7�#��x�7���*�e�F����ٓ'?xt����҃�yґi�t5(�
�$È}"��L��}&>�m������)�T�ۺ�pPж�������e(�Ԙ:x��w�2D�xR�X�=9�XتCQzx��*)G��V�Z��r\�f}�PSj9F*S�N�%�
�7:��Ku��q~w�A}�q&����{�n�w�^Y�S��]j~��W�����yf��!�8nޭ4� ����P��p���V?���cZg��%6���P$h��~3�a�v��3�{$���v������|J�O��R�lP\3J?�)���^��2��������}9�6 ��T�МԞj���J�Z~<���^�>��k����+|�$�����5�3�"���*Z�=%f���iլ�n�-(8m����lQ2Hn�$�p���{��e?MK�):�m��Da�]�S�f=*�~C~����&����bxw��'w��1ߕ����s��&�0φ_�n "��D��ޤ�9��sN�h~�)yx���zj�2�:*~!��Ϡ{�q�Yx������_ޠ���j�Ya����bd�i��*̓��A�UZ5wwk0﨧?hW9�N`=�*��&��M|�i��rp�&�7(+�l�Jej��,�AԖ5&�kz��.����&Yv�����~�4��k��ת����� ��X�9�l����D$.�⺃Y���IX�i0;�U��������P�B����������j�W��.{lW���[V8-��X�l��|^�V}�Pd��L�ݙ3�[\�"f@����x�m�4��N���:�j��hL����l]�,��.q������6٦�.��m��;�����s:���Q�M,f����҃��G9�p��O�o�O2����[iq����*�|�\������T�����ïh�c�&c�3�~H��ͅ���)*�X�ٷ��@���;Lv}����t�6V�$�#�j��8�f@n�����G)����7�bz����Hw�P"c�D]����>�	j��5Q�c������M�w�`��3=	��w�u(��h�i�V�w��VUյ�.O�`�rqtQ��
��~L���1�Hr��)&�XqZ�uv�|�d���F}��f�mB\�6~EYi���ʓ�}���h�$q>��I="(p���T�LG$&/�F�%���_��z��o���?B�G�t^���?�[�niͿ���J�|D���F�"�
�7�F�N��b�F�l�\P%$����Go_=�������߼�ǳ����e�_WS�l�>u���ڝ�TWs�.Q�������iJ7�Fc�̱��[%�+�*���Cgb�� :�u��H����"C	��4�������+R�S��1;-�l�~z���I��k�5/��$y��t�*ǿ7j���N�P�d��  2�bE��M�A���s\"q��%�f<�9jYRo9�[��7�f�UB��^Jd*%�|!�/i������E�	��~��gVD&�,)_�+�,�k�$sJ��יN]�:����z�UK��my�	�C������-�"��u]�˦�wD�GL�0��L�G���Q~EO�:��t�T�K�{C&t�0�k>�Ul����T���L��7�bR��yK�����X�E��{��]A�D��b�O����M�2GL�I�_�K뤼b @hk�^�ѕ��uc-(7֟:-r$���q$�����{���������%�Q �^b:V6	��$.�~SY�7|�d&L�l\4p���8�J�u*���7�i!jB�X	�
�Z.�����Jr.���<�ʊ�$�Y��:�����OK��V�7��n+fh�J�0���o�mW���V��N�B=���E����� '+4��Y����lyI=.m�Ao�� ��l|_Z�#6D�J��'���)=
R�yY��h'�uO�=�jU^;i�`6����m7���s����f�����a��.��y�s�B���r����s��͍����a�ac���9�[%�tڨ�7��.6���b���.6���i�ngk�����J�W}��F��c�_y�E����[��K���%��>�
��x��شda�%���S�>/	�[��]��v���Z趜S5�_n�o�!3�]�ٵ��a��/��(��O��	^�	Zy�R��+@E���?����5���Lli[z�
\e��Y*�	�h� i�"�5p�M~�)C��Y�R
:����P2?-�J��ɲS~q7����M�
�]�vKr�_0~�A�b%�6q���o%��5��{���nCԱ�A���|��+ѵ�
E�ѕ�d"�:6wGZ��G|4�����nB �eL�Q,�"܈ H�tK6�m��^� �  ��ըW�Gd`+yڕU2��i��=�ƴ�q�Q�y8u���������o~	sh`>�Z�r�J���E�oD������,u�ڡ�A�a��GDҦ }9p:�cbso��l4�������9�� m�{R��E��[����4��.��_������Y��Q�y`�5>j���v���B�Oiʈ:}��|�Ϋ�t���`ɶ8��c��)��`(��(Av�t&���<�y�o��G�p�V��L����z�U��s���e��EAO��H��O�����k�Vx�)����x�d��7e�{���`t�6�{���w�V9��<�7tN��4>�֢\/U������v��m�8)ˈKc�^�"�A�6�:;@��$��asC�a���6\;͛�ˌIƌ��lMa��2~�fE}ʻ�VL6xG�B�	�=1}���ȵ�a��({���a��3��D�ZI���A�I�PKo��~g�qH�!�D�%���Qa&;O(2�bM��6߲g̲���ǨK'�jtYw9��}W�Y��>J�����ƺ�u�J��"��R\E1���K��R,�ʿ� ��έ�i�&�7��P����EXke�Dd�KIc(pTlv��<�(`TQԂT�k �5��� :��h�m��l����t/��)�V����{���fݽS��5t�#2�d��F�x/��C}��vl�x���ɏ���7s�>~�����[2��C��Y���BPyvZ��ȴ�܎r�s;��$�oB%x�#4x-���3<6y���[��c2`~�q ��D��P�+=6�r���D�󩘝�C��@[qή(�T�hx�s�l3�ٲڭK�2Y�O��Es�a�'�1��d��ڽIC��N\5up���v�j����d��'���čKC�����'��c�#U)��cgS�殧��Jc�эɡ� z��>M�?n9�z+����������)�����g�RT�,�ʲpm�i��KB]|uD'�@[%��?�Ϲ�!�b��f����s���yV�d�u��Ye��[�|��kv�׳�^�	����������ؼ����O ����:�PtꖜZL�4�;�X����K(iv�;��`��c�����ͯv^c3���j�k`� є���!���3�Y��0���P&*q�7��Iԑ3y�,w$�������bD������N�w��I�׼g3��3z13��z�ᤄN�����Ư�!���x��l~�I�&�37I��S��?5��
J�45���|!�䞎jz��|ōD&b/�Mſ��x�+'VP��b�M�o�3�F�e8���HZ����Cd�٠r�]j��@\�e�j�l�A�cS
0»B�No̱?j6�&jr[�ևK��7��ͩm8$�Ќ	�
�#�}��h_���v?l���g��������������󊷘3_V�b
��y�R-��aE�,�MZ�Sv8?i�/	ԭg��X��[ѭ3�K�6C���k?�+��@���K}1��I��_�ꟙ�ߍ�%(�g��`�K%���Ng��0��MiV�=,�k�����G��d#h<&6�
4����bt�љFg��;��#!���]��@G<Т�Q%,����oУ~���Gӱܪ�r�?�����Cm-����v����X޽A�����v�KR���^��m1������}�wǡ�m���6ӧ�%�s�B�c�����1�W�-DbH�M�v�́���q�4-�sH�<��AbM����c:�7l��<���cy!;�y�xq#�Kd����q$;����1\2��������׫th�w^���۝_4�f��˖�lw�]Au딭�'��^��}�K}\��C�UB3-���� `�����S�{��xl��TD��^'Y��X��j�\��fs���z�i����Ĝ��~ğ��z����B�ٜ��"���������oN�D�DOf���RJ��Z����uu~��������T��P]�f�t�d�����S��'�7�b{�����$~��.��\f ��`1z�����×<9f���Ol����|ᝉ4���[68�,�D���|�I�Ʒ3��?ĝ�y7�G�r��hv-�~�'��G���K�W��h��`���f�m��s�>>�l>�dHU�[u��"�ر�'Ó��8��>P���@�h-��	�!�;~6�m�\��CX�wmn��
��͐n�[�v'��{��b�qv<�^������w6R!��
C���ʶ�]1-��b��İ�!�l��R����E�����v��L�CvIϲ�:a ����l����?���i3�3F��RUث���z���
#�ym�U'��(�3�?��WK�qY�^?�5�c��>�������}���Dx:�R�����e2��D�W� a����}Q�/j?4�m �0�Á�����h^
�a�{w,#$ɼw�ǻGF��3N�7Ĩ��GM�s`��烀0N8��Y�;��Z�޹[-��v�[f'�S�C�N=d���mn��!������fY/�c�~�BEĭ�F��y�V��ZQ�Y�3@��j�*�ug�4ڶ)t���F~�;����@�+`8(	/¸�2�޽�M{[�vz�  �l �#���}-����!�y?�ಒa�U�������J��� ­7y�fܯc����x2���@Ն�
�N��w�0���sg!��C�Hjy[�Ÿ������(I@��9P�4���^���,�g!Յ�gg;AS�VP�H}w��5͏���^�� J^2H�$ơ�F��ω��ւ�=�u�`�-��T�^�f��������᷹}l��7��uɐ&�pE����ji�	��U�|�(��d�=��A;�Һ�v/�)�Ď�hB2&M��O�d��'iQ����%M�$�H^q�/n���"CG�RL���n�;ϛ,#<U�sv	�+v�#{js����������V      V   b  x��]K��6>ۿ"ų����=޹���6�K��]"!	�Ԃ����_>E�@ Ds,�8�|� _7�x����^��N������舽G/�(:?H(�Ӭ�g�����H��U��oW<$��_�K�C�D�1���}9U���8�J$D�u�%GD�x����gZ�����Q�!��<�6^�d)uo��qZ�C�q��ۜUx*��:�+��ɟD��d��(�q' ß�ދ�x_�4_P% �!8~&4������}����ƀ?��!I�.�j��CN�%���Q�iډ�+M�U�}n�L@\d,b�$F�]�E���	�#IS��}���D�������c-��=����J�zO��T���ƣx�)�~������ڔ���;��j��#��u��������={����w�?(Ȋ��d�Z�B��wKi���~�D�®2�!�$qH����4�1�UN��T.�l����z�;Q�rNy�o��o�?53�E��33%3��tN�W�t�Z Ac�o�J�b�3�K�a׭��P�"W�#4͠����(GZ>"��)���Bʠ8ř�J��	���I��
pi$���噱kK�N�6J�'�e�T���9ڃZ�+�?��I��aEU`fXQc�+�+����I��4����v�{ʹ�lv��Uq��|GŌ)x�d��g�I�3�H��H�]
��>��rM\���.�|"Ŋ�e����'�X͖��9����]���~a'�a�	��Ƴ����ٽ�S���/����?㴘*K�Aٹ�7��Lz��]��f5EDw%��\p��'��O*����zO�Ճ�6,�S�:­#?��_�(A�\+K��$
��yB�����' �C�¥B�V1x�U���SB�̃���Z��*�����\��w5��۔�H �~�cu�R�#��] ��A�V�C��h(�ʬ�2_�oι�y+��D�l��P¡�R�TD1o������a 6�#���+�b�"P9��p{���6Q�DV��	�䃋I�IX�?���3T883�`��.p7
��h�����.��!/�lu�e!��/ǞP�p)�_L��[��� C�9�u��ų�D��͜cp�a�c���A� �s���`�%�@�nK��L�bj��!-�Ǘ�4&*wpiI)�9�g��g%wP�O����'�4�Yw���_װ���^	$�o����|]�WB8�{�^�ܾ��P����)`�{Y[��X/Hl��9ah}K���k��b:�,:O��o7�~�{�\�M�+x"A����Ŭ�AR�yS���*��6���R�iO��X�����#��qk<��ta��5;�]Ѥ��^G�O��[ k��F�f_5qE^�� H�Jho�m^2gq��
����)B�t��1�ֵmѫ�.��jи+x6 M�<�z�`P�n-(*����f^�D+Mp��έ9�6׭v����$��+3��106=��vЮϴ�+��>��<cJ	�Q� �+��Rɷ�6ѵ)l�+Rz(֮C1����Ʈ�Ěb�vA��)��,O�����z��lJ�$FQ}�N�)8��ET�1��]�d�W�f���h_i�g�2%̳iYk�ƚ�f�7�9D���L��Ks:&y����5u�OI\e� ��RwD����;�<�%�d��kWl舤0$~AU�u@x�\}}6��	���}(W_FT��T�C��*�F"G�?����������_S� �P����)���$fq`X`L��-����v$ɷ�J��gw�æ��3*<��pFA�&׌��h���	f�\sW��QTAx���T�&�>7��m`��D�c���◧��mϠ���M�M��	ݩ��>��hw\�7��Z��<���ȓp��|1/r���I���I\_��3�Ek���ű��j�(����Y4&���_�:� F-�&�;E1��3�:�ǩҦlx��UQ1Ŋ�R�Y��5�.�GA�h׮��h�ű�CQ����()�w�SU�Ǆ���,��#�-�ΰ�*�,2� v���'�_W�a�e���h�Hs���θ���6r؍�R������(,� ͭ��k\Nc����^S`�2/�̖��<XqTS�O0:�c�J�t���;���I��ZH!lMr�	щ,uI��.C�Yr��6�?���JXD&EB'5�4�v(Ĥ�6F�b�%������h%.�kd-�1T_#�l�+�%XJV0�H�I���b86�J]�A��0�z[~TJL���`�Q��		<��yZݣ?)���z%�p���?�CS_� �	���u!�>l]��.ϯ�T�.h:�I�#�C�g*Up�]Z1w�h�����ۺ�+]������ij��qrQ�35�ؠ�Rh�	J}�_�Ϊk�WT!U�5Nmz�a7�&Yo�B~<A|4�/�^�1�!���ʉmй�8�QO�I|��d��&ǩ�Mx��""ae�!k�p�nΞ�'�!�dㆍ��ܢ�u#��� i�Ѕ��ˌ���Q9l� W��b�B��-���:@1� �A����U�S����8�%y$��Q��#i�UFm�G,d"9�R#�5�ѽ����`�VC3}{������.H:�24�gTk��xFΖ��S䥡uz�c)��_��̆SS��w�	�e��WDd�;��'Q�]�G�D ������&jq�P���z��@w��٠�]����g�ؐ.9`�X+h{��b�$��I<9��ȑ4�	4~�NO7�iB�,�����3��u�l�W%Nd����E#[���hl�����Ww7wo~�y����w��w??�<���������=��������<ܿy��۽�����ۇ���z�����#��      T      x������ � �      h      x������ � �      |      x������ � �      f      x������ � �      Z      x������ � �      �   �  x���K��0���)�!ħD�'�� �E�����/�N�4�W���I��$j����|�q�L���>THO����a�{i����T:IW;�L���t�xx������T��i}�Gb�G�;"h�rxȗ�����nP��(��L�A�eĠ��5u�N�c렌�]�?ο����No�EPT���*�k�U�3w��� K����W�< ��6�y{({*�M�PQ*O\���hC}L��K���h��)n-#&��J�J�`�HPq$���1}R��t�ѓš�)l�1�R��i�.
�4�'�GL�/<�;(�PS��qMZ�I�G��>�4:ni���V���	E5ǦQ\yX�
�6�'T��-E��y[;O�:�����<�@��t0��>�4ƜJ��9��>��u�ǝ>����!���ᙜ      �   n   x���	E1���K�d����_�U"Y���B��3?.,��F{7����q7/�{��5��Rƅ�(�Bՠ&_(��VQ��'���("QS�ģM��k�����#��Q�      n   �   x���M�0F�p
/@S~�l�[��T��?�S��Ű�4A�o��e&�f��B7͂`1��*�(�F�!DA�ѬL(KhqJ�`�HEK/oo��l��7�n�z�;G|����
�����Wc��7���sM�图�cG�v��T�
(.���AX����X(d��k�pd����C~�_�����q�`p��      �   5   x�ȹ  ���[�����l�T������X6v��d�E�Ͷ�H�c�	)      p   w   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"�id`d�k`�k`�`hlebDzF�F8�c���ˈ3�4)'3���y�,.�h�f���!Nq��1z\\\ [�E�      r   �   x�3�,I-.)-N-3R+srR���s9s�s8U�UT���R��Ì���M�=2���3K�RS��-]Ls]�"�-|CÂS]S��ݍ8c�@��3�����T��\��T��������L���0XW� �+�      �      x�3�4A�=... ��      l      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     