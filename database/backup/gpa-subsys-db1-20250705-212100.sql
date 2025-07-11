PGDMP                          }           gpa-subsys-db1    14.18    14.18 (Homebrew) �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
          public          strapi    false    267                       1259    63440    features    TABLE     *  CREATE TABLE public.features (
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
       public         heap    strapi    false                       1259    63439    features_id_seq    SEQUENCE     �   CREATE SEQUENCE public.features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.features_id_seq;
       public          strapi    false    278            �           0    0    features_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.features_id_seq OWNED BY public.features.id;
          public          strapi    false    277                       1259    63451    features_localizations_links    TABLE     �   CREATE TABLE public.features_localizations_links (
    id integer NOT NULL,
    feature_id integer,
    inv_feature_id integer,
    feature_order double precision
);
 0   DROP TABLE public.features_localizations_links;
       public         heap    strapi    false                       1259    63450 #   features_localizations_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.features_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.features_localizations_links_id_seq;
       public          strapi    false    280            �           0    0 #   features_localizations_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.features_localizations_links_id_seq OWNED BY public.features_localizations_links.id;
          public          strapi    false    279                       1259    63488    features_plans_links    TABLE     �   CREATE TABLE public.features_plans_links (
    id integer NOT NULL,
    feature_id integer,
    plan_id integer,
    plan_order double precision,
    feature_order double precision
);
 (   DROP TABLE public.features_plans_links;
       public         heap    strapi    false                       1259    63487    features_plans_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.features_plans_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.features_plans_links_id_seq;
       public          strapi    false    282            �           0    0    features_plans_links_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.features_plans_links_id_seq OWNED BY public.features_plans_links.id;
          public          strapi    false    281            �            1259    62753    files    TABLE     �  CREATE TABLE public.files (
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
          public          strapi    false    241                        1259    63583    plan_ent_links    TABLE     �   CREATE TABLE public.plan_ent_links (
    id integer NOT NULL,
    limit_override integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.plan_ent_links;
       public         heap    strapi    false            $           1259    63604     plan_ent_links_entitlement_links    TABLE     �   CREATE TABLE public.plan_ent_links_entitlement_links (
    id integer NOT NULL,
    plan_ent_link_id integer,
    entitlement_id integer,
    plan_ent_link_order double precision
);
 4   DROP TABLE public.plan_ent_links_entitlement_links;
       public         heap    strapi    false            #           1259    63603 '   plan_ent_links_entitlement_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.plan_ent_links_entitlement_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.plan_ent_links_entitlement_links_id_seq;
       public          strapi    false    292            �           0    0 '   plan_ent_links_entitlement_links_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.plan_ent_links_entitlement_links_id_seq OWNED BY public.plan_ent_links_entitlement_links.id;
          public          strapi    false    291                       1259    63582    plan_ent_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.plan_ent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.plan_ent_links_id_seq;
       public          strapi    false    288            �           0    0    plan_ent_links_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.plan_ent_links_id_seq OWNED BY public.plan_ent_links.id;
          public          strapi    false    287            "           1259    63592    plan_ent_links_plan_links    TABLE     �   CREATE TABLE public.plan_ent_links_plan_links (
    id integer NOT NULL,
    plan_ent_link_id integer,
    plan_id integer,
    plan_ent_link_order double precision
);
 -   DROP TABLE public.plan_ent_links_plan_links;
       public         heap    strapi    false            !           1259    63591     plan_ent_links_plan_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.plan_ent_links_plan_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.plan_ent_links_plan_links_id_seq;
       public          strapi    false    290            �           0    0     plan_ent_links_plan_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.plan_ent_links_plan_links_id_seq OWNED BY public.plan_ent_links_plan_links.id;
          public          strapi    false    289                       1259    63164    plans    TABLE     �  CREATE TABLE public.plans (
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
       public         heap    strapi    false                       1259    63255    plans_entitlements_links    TABLE     �   CREATE TABLE public.plans_entitlements_links (
    id integer NOT NULL,
    plan_id integer,
    entitlement_id integer,
    entitlement_order double precision,
    plan_order double precision
);
 ,   DROP TABLE public.plans_entitlements_links;
       public         heap    strapi    false                       1259    63254    plans_entitlements_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.plans_entitlements_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.plans_entitlements_links_id_seq;
       public          strapi    false    270            �           0    0    plans_entitlements_links_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.plans_entitlements_links_id_seq OWNED BY public.plans_entitlements_links.id;
          public          strapi    false    269                       1259    63163    plans_id_seq    SEQUENCE     �   CREATE SEQUENCE public.plans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.plans_id_seq;
       public          strapi    false    264            �           0    0    plans_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.plans_id_seq OWNED BY public.plans.id;
          public          strapi    false    263                       1259    63268    plans_inherit_from_links    TABLE     �   CREATE TABLE public.plans_inherit_from_links (
    id integer NOT NULL,
    plan_id integer,
    inv_plan_id integer,
    plan_order double precision
);
 ,   DROP TABLE public.plans_inherit_from_links;
       public         heap    strapi    false                       1259    63267    plans_inherit_from_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.plans_inherit_from_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.plans_inherit_from_links_id_seq;
       public          strapi    false    272            �           0    0    plans_inherit_from_links_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.plans_inherit_from_links_id_seq OWNED BY public.plans_inherit_from_links.id;
          public          strapi    false    271            
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
          public          strapi    false    215                       1259    63336    subscriptions    TABLE     �  CREATE TABLE public.subscriptions (
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
       public         heap    strapi    false                       1259    63335    subscriptions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subscriptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.subscriptions_id_seq;
       public          strapi    false    274            �           0    0    subscriptions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.subscriptions_id_seq OWNED BY public.subscriptions.id;
          public          strapi    false    273                       1259    63347    subscriptions_plan_links    TABLE     �   CREATE TABLE public.subscriptions_plan_links (
    id integer NOT NULL,
    subscription_id integer,
    plan_id integer,
    subscription_order double precision
);
 ,   DROP TABLE public.subscriptions_plan_links;
       public         heap    strapi    false                       1259    63346    subscriptions_plan_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subscriptions_plan_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.subscriptions_plan_links_id_seq;
       public          strapi    false    276            �           0    0    subscriptions_plan_links_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.subscriptions_plan_links_id_seq OWNED BY public.subscriptions_plan_links.id;
          public          strapi    false    275            �            1259    62785    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
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
          public          strapi    false    255                       1259    63538    usageledgers    TABLE     2  CREATE TABLE public.usageledgers (
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
       public         heap    strapi    false                       1259    63547    usageledgers_entitlement_links    TABLE     �   CREATE TABLE public.usageledgers_entitlement_links (
    id integer NOT NULL,
    usageledger_id integer,
    entitlement_id integer,
    usageledger_order double precision
);
 2   DROP TABLE public.usageledgers_entitlement_links;
       public         heap    strapi    false                       1259    63546 %   usageledgers_entitlement_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usageledgers_entitlement_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.usageledgers_entitlement_links_id_seq;
       public          strapi    false    286            �           0    0 %   usageledgers_entitlement_links_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.usageledgers_entitlement_links_id_seq OWNED BY public.usageledgers_entitlement_links.id;
          public          strapi    false    285                       1259    63537    usageledgers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usageledgers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.usageledgers_id_seq;
       public          strapi    false    284            �           0    0    usageledgers_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.usageledgers_id_seq OWNED BY public.usageledgers.id;
          public          strapi    false    283            �           2604    62683    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    218    217    218            �           2604    62830    admin_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    243    244    244            �           2604    62705    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    221    222    222            �           2604    62694    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    220    219    220            �           2604    62842    admin_users_roles_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    246    245    246            �           2604    63158    components_a_features id    DEFAULT     �   ALTER TABLE ONLY public.components_a_features ALTER COLUMN id SET DEFAULT nextval('public.components_a_features_id_seq'::regclass);
 G   ALTER TABLE public.components_a_features ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    261    262    262            �           2604    63231    entitlements id    DEFAULT     r   ALTER TABLE ONLY public.entitlements ALTER COLUMN id SET DEFAULT nextval('public.entitlements_id_seq'::regclass);
 >   ALTER TABLE public.entitlements ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    268    267    268            �           2604    63443    features id    DEFAULT     j   ALTER TABLE ONLY public.features ALTER COLUMN id SET DEFAULT nextval('public.features_id_seq'::regclass);
 :   ALTER TABLE public.features ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    277    278    278            �           2604    63454    features_localizations_links id    DEFAULT     �   ALTER TABLE ONLY public.features_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.features_localizations_links_id_seq'::regclass);
 N   ALTER TABLE public.features_localizations_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    280    279    280            �           2604    63491    features_plans_links id    DEFAULT     �   ALTER TABLE ONLY public.features_plans_links ALTER COLUMN id SET DEFAULT nextval('public.features_plans_links_id_seq'::regclass);
 F   ALTER TABLE public.features_plans_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    282    281    282            �           2604    62756    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    232    231    232            �           2604    62891    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    253    254    254            �           2604    62879    files_related_morphs id    DEFAULT     �   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    252    251    252            �           2604    62819    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    241    242    242            �           2604    63586    plan_ent_links id    DEFAULT     v   ALTER TABLE ONLY public.plan_ent_links ALTER COLUMN id SET DEFAULT nextval('public.plan_ent_links_id_seq'::regclass);
 @   ALTER TABLE public.plan_ent_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    287    288    288            �           2604    63607 #   plan_ent_links_entitlement_links id    DEFAULT     �   ALTER TABLE ONLY public.plan_ent_links_entitlement_links ALTER COLUMN id SET DEFAULT nextval('public.plan_ent_links_entitlement_links_id_seq'::regclass);
 R   ALTER TABLE public.plan_ent_links_entitlement_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    292    291    292            �           2604    63595    plan_ent_links_plan_links id    DEFAULT     �   ALTER TABLE ONLY public.plan_ent_links_plan_links ALTER COLUMN id SET DEFAULT nextval('public.plan_ent_links_plan_links_id_seq'::regclass);
 K   ALTER TABLE public.plan_ent_links_plan_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    290    289    290            �           2604    63167    plans id    DEFAULT     d   ALTER TABLE ONLY public.plans ALTER COLUMN id SET DEFAULT nextval('public.plans_id_seq'::regclass);
 7   ALTER TABLE public.plans ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    264    263    264            �           2604    63258    plans_entitlements_links id    DEFAULT     �   ALTER TABLE ONLY public.plans_entitlements_links ALTER COLUMN id SET DEFAULT nextval('public.plans_entitlements_links_id_seq'::regclass);
 J   ALTER TABLE public.plans_entitlements_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    269    270    270            �           2604    63271    plans_inherit_from_links id    DEFAULT     �   ALTER TABLE ONLY public.plans_inherit_from_links ALTER COLUMN id SET DEFAULT nextval('public.plans_inherit_from_links_id_seq'::regclass);
 J   ALTER TABLE public.plans_inherit_from_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    271    272    272            �           2604    63192    plans_localizations_links id    DEFAULT     �   ALTER TABLE ONLY public.plans_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.plans_localizations_links_id_seq'::regclass);
 K   ALTER TABLE public.plans_localizations_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    266    265    266            �           2604    62727    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    226    225    226            �           2604    62855 +   strapi_api_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    248    247    248            �           2604    62716    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    224    223    224            �           2604    62665    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    213    214    214            �           2604    62656    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    212    211    212            �           2604    62649    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    210    209    210            �           2604    62747 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    230    229    230            �           2604    62867 0   strapi_transfer_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);
 _   ALTER TABLE public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    249    250    250            �           2604    62736    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    227    228    228            �           2604    62674    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    215    216    216            �           2604    63339    subscriptions id    DEFAULT     t   ALTER TABLE ONLY public.subscriptions ALTER COLUMN id SET DEFAULT nextval('public.subscriptions_id_seq'::regclass);
 ?   ALTER TABLE public.subscriptions ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    274    273    274            �           2604    63350    subscriptions_plan_links id    DEFAULT     �   ALTER TABLE ONLY public.subscriptions_plan_links ALTER COLUMN id SET DEFAULT nextval('public.subscriptions_plan_links_id_seq'::regclass);
 J   ALTER TABLE public.subscriptions_plan_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    276    275    276            �           2604    62788    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    235    236    236            �           2604    62915    up_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    257    258    258            �           2604    62797    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    237    238    238            �           2604    62808    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    239    240    240            �           2604    62927    up_users_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    260    259    260            �           2604    62773    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    233    234    234            �           2604    62903    upload_folders_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    255    256    256            �           2604    63541    usageledgers id    DEFAULT     r   ALTER TABLE ONLY public.usageledgers ALTER COLUMN id SET DEFAULT nextval('public.usageledgers_id_seq'::regclass);
 >   ALTER TABLE public.usageledgers ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    284    283    284            �           2604    63550 !   usageledgers_entitlement_links id    DEFAULT     �   ALTER TABLE ONLY public.usageledgers_entitlement_links ALTER COLUMN id SET DEFAULT nextval('public.usageledgers_entitlement_links_id_seq'::regclass);
 P   ALTER TABLE public.usageledgers_entitlement_links ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    285    286    286            l          0    62680    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    218   ֤      �          0    62827    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          strapi    false    244   d�      p          0    62702    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    222   _�      n          0    62691    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    220   C�      �          0    62839    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          strapi    false    246   �      �          0    63155    components_a_features 
   TABLE DATA           3   COPY public.components_a_features (id) FROM stdin;
    public          strapi    false    262   	�      �          0    63228    entitlements 
   TABLE DATA           �   COPY public.entitlements (id, name, slug, created_at, updated_at, created_by_id, updated_by_id, ismetered, defaultlimit, reset_period) FROM stdin;
    public          strapi    false    268   >�      �          0    63440    features 
   TABLE DATA           v   COPY public.features (id, feature, created_at, updated_at, created_by_id, updated_by_id, locale, "order") FROM stdin;
    public          strapi    false    278   ��      �          0    63451    features_localizations_links 
   TABLE DATA           e   COPY public.features_localizations_links (id, feature_id, inv_feature_id, feature_order) FROM stdin;
    public          strapi    false    280   k�      �          0    63488    features_plans_links 
   TABLE DATA           b   COPY public.features_plans_links (id, feature_id, plan_id, plan_order, feature_order) FROM stdin;
    public          strapi    false    282   ��      z          0    62753    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    232   ֲ      �          0    62888    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          strapi    false    254   �      �          0    62876    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          strapi    false    252   �      �          0    62816    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    242   -�      �          0    63583    plan_ent_links 
   TABLE DATA           r   COPY public.plan_ent_links (id, limit_override, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    288   x�      �          0    63604     plan_ent_links_entitlement_links 
   TABLE DATA           u   COPY public.plan_ent_links_entitlement_links (id, plan_ent_link_id, entitlement_id, plan_ent_link_order) FROM stdin;
    public          strapi    false    292   ��      �          0    63592    plan_ent_links_plan_links 
   TABLE DATA           g   COPY public.plan_ent_links_plan_links (id, plan_ent_link_id, plan_id, plan_ent_link_order) FROM stdin;
    public          strapi    false    290   ��      �          0    63164    plans 
   TABLE DATA           �   COPY public.plans (id, name, product_id, created_at, updated_at, created_by_id, updated_by_id, locale, sale_product_id, sale_start_date, sale_end_date) FROM stdin;
    public          strapi    false    264   ϳ      �          0    63255    plans_entitlements_links 
   TABLE DATA           n   COPY public.plans_entitlements_links (id, plan_id, entitlement_id, entitlement_order, plan_order) FROM stdin;
    public          strapi    false    270   s�      �          0    63268    plans_inherit_from_links 
   TABLE DATA           X   COPY public.plans_inherit_from_links (id, plan_id, inv_plan_id, plan_order) FROM stdin;
    public          strapi    false    272   ��      �          0    63189    plans_localizations_links 
   TABLE DATA           Y   COPY public.plans_localizations_links (id, plan_id, inv_plan_id, plan_order) FROM stdin;
    public          strapi    false    266   ݴ      t          0    62724    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    226   ��      �          0    62852 (   strapi_api_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          strapi    false    248   �      r          0    62713    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    224   4�      h          0    62662    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          strapi    false    214   �      f          0    62653    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          strapi    false    212   ��      d          0    62646    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          strapi    false    210   ��      x          0    62744 !   strapi_transfer_token_permissions 
   TABLE DATA           }   COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    230   ��      �          0    62864 -   strapi_transfer_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
    public          strapi    false    250   ��      v          0    62733    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    228   ��      j          0    62671    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          strapi    false    216   
�      �          0    63336    subscriptions 
   TABLE DATA           �   COPY public.subscriptions (id, strapi_user_id, status, expire_date, original_transaction_id, latest_transaction_id, created_at, updated_at, created_by_id, updated_by_id, start_date) FROM stdin;
    public          strapi    false    274   '�      �          0    63347    subscriptions_plan_links 
   TABLE DATA           d   COPY public.subscriptions_plan_links (id, subscription_id, plan_id, subscription_order) FROM stdin;
    public          strapi    false    276   ��      ~          0    62785    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    236   Z�      �          0    62912    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          strapi    false    258   '�      �          0    62794    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    238   l�      �          0    62805    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    240   ��      �          0    62924    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          strapi    false    260   ��      |          0    62770    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    234   ��      �          0    62900    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          strapi    false    256   ��      �          0    63538    usageledgers 
   TABLE DATA           �   COPY public.usageledgers (id, strapi_user_id, consumed_at, amount, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          strapi    false    284   ��      �          0    63547    usageledgers_entitlement_links 
   TABLE DATA           o   COPY public.usageledgers_entitlement_links (id, usageledger_id, entitlement_id, usageledger_order) FROM stdin;
    public          strapi    false    286   �      �           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 130, true);
          public          strapi    false    217            �           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 130, true);
          public          strapi    false    243            �           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          strapi    false    221            �           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public          strapi    false    219            �           0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);
          public          strapi    false    245            �           0    0    components_a_features_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.components_a_features_id_seq', 12, true);
          public          strapi    false    261            �           0    0    entitlements_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.entitlements_id_seq', 5, true);
          public          strapi    false    267            �           0    0    features_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.features_id_seq', 9, true);
          public          strapi    false    277            �           0    0 #   features_localizations_links_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.features_localizations_links_id_seq', 1, false);
          public          strapi    false    279            �           0    0    features_plans_links_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.features_plans_links_id_seq', 9, true);
          public          strapi    false    281            �           0    0    files_folder_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);
          public          strapi    false    253            �           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 1, false);
          public          strapi    false    231            �           0    0    files_related_morphs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 1, false);
          public          strapi    false    251            �           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          strapi    false    241            �           0    0 '   plan_ent_links_entitlement_links_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.plan_ent_links_entitlement_links_id_seq', 1, false);
          public          strapi    false    291            �           0    0    plan_ent_links_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.plan_ent_links_id_seq', 1, false);
          public          strapi    false    287            �           0    0     plan_ent_links_plan_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.plan_ent_links_plan_links_id_seq', 1, false);
          public          strapi    false    289            �           0    0    plans_entitlements_links_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.plans_entitlements_links_id_seq', 5, true);
          public          strapi    false    269            �           0    0    plans_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.plans_id_seq', 3, true);
          public          strapi    false    263            �           0    0    plans_inherit_from_links_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.plans_inherit_from_links_id_seq', 2, true);
          public          strapi    false    271            �           0    0     plans_localizations_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.plans_localizations_links_id_seq', 1, false);
          public          strapi    false    265            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          strapi    false    225            �           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);
          public          strapi    false    247            �           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, true);
          public          strapi    false    223                        0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 30, true);
          public          strapi    false    213                       0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 15, true);
          public          strapi    false    211                       0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          strapi    false    209                       0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public          strapi    false    229                       0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);
          public          strapi    false    249                       0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public          strapi    false    227                       0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          strapi    false    215                       0    0    subscriptions_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.subscriptions_id_seq', 20, true);
          public          strapi    false    273                       0    0    subscriptions_plan_links_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.subscriptions_plan_links_id_seq', 20, true);
          public          strapi    false    275            	           0    0    up_permissions_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.up_permissions_id_seq', 9, true);
          public          strapi    false    235            
           0    0     up_permissions_role_links_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 9, true);
          public          strapi    false    257                       0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          strapi    false    237                       0    0    up_users_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_users_id_seq', 1, true);
          public          strapi    false    239                       0    0    up_users_role_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, true);
          public          strapi    false    259                       0    0    upload_folders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);
          public          strapi    false    233                       0    0 "   upload_folders_parent_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);
          public          strapi    false    255                       0    0 %   usageledgers_entitlement_links_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.usageledgers_entitlement_links_id_seq', 1, false);
          public          strapi    false    285                       0    0    usageledgers_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.usageledgers_id_seq', 1, false);
          public          strapi    false    283            �           2606    62687 (   admin_permissions admin_permissions_pkey 
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
       public            strapi    false    220                        2606    62844 4   admin_users_roles_links admin_users_roles_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_pkey;
       public            strapi    false    246                       2606    62848 6   admin_users_roles_links admin_users_roles_links_unique 
   CONSTRAINT     }   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_unique;
       public            strapi    false    246    246            3           2606    63160 0   components_a_features components_a_features_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.components_a_features
    ADD CONSTRAINT components_a_features_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.components_a_features DROP CONSTRAINT components_a_features_pkey;
       public            strapi    false    262            A           2606    63235    entitlements entitlements_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.entitlements
    ADD CONSTRAINT entitlements_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.entitlements DROP CONSTRAINT entitlements_pkey;
       public            strapi    false    268            C           2606    63237 %   entitlements entitlements_slug_unique 
   CONSTRAINT     `   ALTER TABLE ONLY public.entitlements
    ADD CONSTRAINT entitlements_slug_unique UNIQUE (slug);
 O   ALTER TABLE ONLY public.entitlements DROP CONSTRAINT entitlements_slug_unique;
       public            strapi    false    268            g           2606    63456 >   features_localizations_links features_localizations_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.features_localizations_links
    ADD CONSTRAINT features_localizations_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.features_localizations_links DROP CONSTRAINT features_localizations_links_pkey;
       public            strapi    false    280            i           2606    63460 @   features_localizations_links features_localizations_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.features_localizations_links
    ADD CONSTRAINT features_localizations_links_unique UNIQUE (feature_id, inv_feature_id);
 j   ALTER TABLE ONLY public.features_localizations_links DROP CONSTRAINT features_localizations_links_unique;
       public            strapi    false    280    280            a           2606    63447    features features_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.features
    ADD CONSTRAINT features_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.features DROP CONSTRAINT features_pkey;
       public            strapi    false    278            o           2606    63493 .   features_plans_links features_plans_links_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.features_plans_links
    ADD CONSTRAINT features_plans_links_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.features_plans_links DROP CONSTRAINT features_plans_links_pkey;
       public            strapi    false    282            q           2606    63497 0   features_plans_links features_plans_links_unique 
   CONSTRAINT     z   ALTER TABLE ONLY public.features_plans_links
    ADD CONSTRAINT features_plans_links_unique UNIQUE (feature_id, plan_id);
 Z   ALTER TABLE ONLY public.features_plans_links DROP CONSTRAINT features_plans_links_unique;
       public            strapi    false    282    282                       2606    62893 *   files_folder_links files_folder_links_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_pkey;
       public            strapi    false    254                       2606    62897 ,   files_folder_links files_folder_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_unique;
       public            strapi    false    254    254            �           2606    62760    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            strapi    false    232                       2606    62883 .   files_related_morphs files_related_morphs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
       public            strapi    false    252            �           2606    62823    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            strapi    false    242            �           2606    63609 F   plan_ent_links_entitlement_links plan_ent_links_entitlement_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.plan_ent_links_entitlement_links
    ADD CONSTRAINT plan_ent_links_entitlement_links_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.plan_ent_links_entitlement_links DROP CONSTRAINT plan_ent_links_entitlement_links_pkey;
       public            strapi    false    292            �           2606    63613 H   plan_ent_links_entitlement_links plan_ent_links_entitlement_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.plan_ent_links_entitlement_links
    ADD CONSTRAINT plan_ent_links_entitlement_links_unique UNIQUE (plan_ent_link_id, entitlement_id);
 r   ALTER TABLE ONLY public.plan_ent_links_entitlement_links DROP CONSTRAINT plan_ent_links_entitlement_links_unique;
       public            strapi    false    292    292                       2606    63588 "   plan_ent_links plan_ent_links_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.plan_ent_links
    ADD CONSTRAINT plan_ent_links_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.plan_ent_links DROP CONSTRAINT plan_ent_links_pkey;
       public            strapi    false    288            �           2606    63597 8   plan_ent_links_plan_links plan_ent_links_plan_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.plan_ent_links_plan_links
    ADD CONSTRAINT plan_ent_links_plan_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.plan_ent_links_plan_links DROP CONSTRAINT plan_ent_links_plan_links_pkey;
       public            strapi    false    290            �           2606    63601 :   plan_ent_links_plan_links plan_ent_links_plan_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.plan_ent_links_plan_links
    ADD CONSTRAINT plan_ent_links_plan_links_unique UNIQUE (plan_ent_link_id, plan_id);
 d   ALTER TABLE ONLY public.plan_ent_links_plan_links DROP CONSTRAINT plan_ent_links_plan_links_unique;
       public            strapi    false    290    290            J           2606    63260 6   plans_entitlements_links plans_entitlements_links_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.plans_entitlements_links
    ADD CONSTRAINT plans_entitlements_links_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.plans_entitlements_links DROP CONSTRAINT plans_entitlements_links_pkey;
       public            strapi    false    270            L           2606    63264 8   plans_entitlements_links plans_entitlements_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.plans_entitlements_links
    ADD CONSTRAINT plans_entitlements_links_unique UNIQUE (plan_id, entitlement_id);
 b   ALTER TABLE ONLY public.plans_entitlements_links DROP CONSTRAINT plans_entitlements_links_unique;
       public            strapi    false    270    270            Q           2606    63273 6   plans_inherit_from_links plans_inherit_from_links_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.plans_inherit_from_links
    ADD CONSTRAINT plans_inherit_from_links_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.plans_inherit_from_links DROP CONSTRAINT plans_inherit_from_links_pkey;
       public            strapi    false    272            S           2606    63277 8   plans_inherit_from_links plans_inherit_from_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.plans_inherit_from_links
    ADD CONSTRAINT plans_inherit_from_links_unique UNIQUE (plan_id, inv_plan_id);
 b   ALTER TABLE ONLY public.plans_inherit_from_links DROP CONSTRAINT plans_inherit_from_links_unique;
       public            strapi    false    272    272            <           2606    63194 8   plans_localizations_links plans_localizations_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.plans_localizations_links
    ADD CONSTRAINT plans_localizations_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.plans_localizations_links DROP CONSTRAINT plans_localizations_links_pkey;
       public            strapi    false    266            >           2606    63198 :   plans_localizations_links plans_localizations_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.plans_localizations_links
    ADD CONSTRAINT plans_localizations_links_unique UNIQUE (plan_id, inv_plan_id);
 d   ALTER TABLE ONLY public.plans_localizations_links DROP CONSTRAINT plans_localizations_links_unique;
       public            strapi    false    266    266            6           2606    63171    plans plans_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.plans
    ADD CONSTRAINT plans_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.plans DROP CONSTRAINT plans_pkey;
       public            strapi    false    264            �           2606    62729 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public            strapi    false    226                       2606    62857 V   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_pkey;
       public            strapi    false    248            	           2606    62861 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique 
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
       public            strapi    false    230                       2606    62869 `   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_pkey;
       public            strapi    false    250                       2606    62873 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique 
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
       public            strapi    false    216            V           2606    63343     subscriptions subscriptions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.subscriptions DROP CONSTRAINT subscriptions_pkey;
       public            strapi    false    274            \           2606    63352 6   subscriptions_plan_links subscriptions_plan_links_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.subscriptions_plan_links
    ADD CONSTRAINT subscriptions_plan_links_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.subscriptions_plan_links DROP CONSTRAINT subscriptions_plan_links_pkey;
       public            strapi    false    276            ^           2606    63356 8   subscriptions_plan_links subscriptions_plan_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.subscriptions_plan_links
    ADD CONSTRAINT subscriptions_plan_links_unique UNIQUE (subscription_id, plan_id);
 b   ALTER TABLE ONLY public.subscriptions_plan_links DROP CONSTRAINT subscriptions_plan_links_unique;
       public            strapi    false    276    276            �           2606    62790 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            strapi    false    236            (           2606    62917 8   up_permissions_role_links up_permissions_role_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_pkey;
       public            strapi    false    258            *           2606    62921 :   up_permissions_role_links up_permissions_role_links_unique 
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
       public            strapi    false    240            /           2606    62929 ,   up_users_role_links up_users_role_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_pkey;
       public            strapi    false    260            1           2606    62933 .   up_users_role_links up_users_role_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_unique;
       public            strapi    false    260    260            !           2606    62905 <   upload_folders_parent_links upload_folders_parent_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_pkey;
       public            strapi    false    256            #           2606    62909 >   upload_folders_parent_links upload_folders_parent_links_unique 
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
       public            strapi    false    234            z           2606    63552 B   usageledgers_entitlement_links usageledgers_entitlement_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.usageledgers_entitlement_links
    ADD CONSTRAINT usageledgers_entitlement_links_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.usageledgers_entitlement_links DROP CONSTRAINT usageledgers_entitlement_links_pkey;
       public            strapi    false    286            |           2606    63556 D   usageledgers_entitlement_links usageledgers_entitlement_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.usageledgers_entitlement_links
    ADD CONSTRAINT usageledgers_entitlement_links_unique UNIQUE (usageledger_id, entitlement_id);
 n   ALTER TABLE ONLY public.usageledgers_entitlement_links DROP CONSTRAINT usageledgers_entitlement_links_unique;
       public            strapi    false    286    286            t           2606    63543    usageledgers usageledgers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usageledgers
    ADD CONSTRAINT usageledgers_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.usageledgers DROP CONSTRAINT usageledgers_pkey;
       public            strapi    false    284            �           1259    62688 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
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
       public            strapi    false    220            ?           1259    63238    entitlements_created_by_id_fk    INDEX     _   CREATE INDEX entitlements_created_by_id_fk ON public.entitlements USING btree (created_by_id);
 1   DROP INDEX public.entitlements_created_by_id_fk;
       public            strapi    false    268            D           1259    63239    entitlements_updated_by_id_fk    INDEX     _   CREATE INDEX entitlements_updated_by_id_fk ON public.entitlements USING btree (updated_by_id);
 1   DROP INDEX public.entitlements_updated_by_id_fk;
       public            strapi    false    268            _           1259    63448    features_created_by_id_fk    INDEX     W   CREATE INDEX features_created_by_id_fk ON public.features USING btree (created_by_id);
 -   DROP INDEX public.features_created_by_id_fk;
       public            strapi    false    278            c           1259    63457    features_localizations_links_fk    INDEX     n   CREATE INDEX features_localizations_links_fk ON public.features_localizations_links USING btree (feature_id);
 3   DROP INDEX public.features_localizations_links_fk;
       public            strapi    false    280            d           1259    63458 #   features_localizations_links_inv_fk    INDEX     v   CREATE INDEX features_localizations_links_inv_fk ON public.features_localizations_links USING btree (inv_feature_id);
 7   DROP INDEX public.features_localizations_links_inv_fk;
       public            strapi    false    280            e           1259    63461 %   features_localizations_links_order_fk    INDEX     w   CREATE INDEX features_localizations_links_order_fk ON public.features_localizations_links USING btree (feature_order);
 9   DROP INDEX public.features_localizations_links_order_fk;
       public            strapi    false    280            j           1259    63494    features_plans_links_fk    INDEX     ^   CREATE INDEX features_plans_links_fk ON public.features_plans_links USING btree (feature_id);
 +   DROP INDEX public.features_plans_links_fk;
       public            strapi    false    282            k           1259    63495    features_plans_links_inv_fk    INDEX     _   CREATE INDEX features_plans_links_inv_fk ON public.features_plans_links USING btree (plan_id);
 /   DROP INDEX public.features_plans_links_inv_fk;
       public            strapi    false    282            l           1259    63498    features_plans_links_order_fk    INDEX     d   CREATE INDEX features_plans_links_order_fk ON public.features_plans_links USING btree (plan_order);
 1   DROP INDEX public.features_plans_links_order_fk;
       public            strapi    false    282            m           1259    63499 !   features_plans_links_order_inv_fk    INDEX     k   CREATE INDEX features_plans_links_order_inv_fk ON public.features_plans_links USING btree (feature_order);
 5   DROP INDEX public.features_plans_links_order_inv_fk;
       public            strapi    false    282            b           1259    63449    features_updated_by_id_fk    INDEX     W   CREATE INDEX features_updated_by_id_fk ON public.features USING btree (updated_by_id);
 -   DROP INDEX public.features_updated_by_id_fk;
       public            strapi    false    278            �           1259    62767    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            strapi    false    232                       1259    62894    files_folder_links_fk    INDEX     W   CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);
 )   DROP INDEX public.files_folder_links_fk;
       public            strapi    false    254                       1259    62895    files_folder_links_inv_fk    INDEX     ]   CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);
 -   DROP INDEX public.files_folder_links_inv_fk;
       public            strapi    false    254                       1259    62898    files_folder_links_order_inv_fk    INDEX     d   CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);
 3   DROP INDEX public.files_folder_links_order_inv_fk;
       public            strapi    false    254                       1259    62884    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            strapi    false    252                       1259    62886 $   files_related_morphs_id_column_index    INDEX     k   CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);
 8   DROP INDEX public.files_related_morphs_id_column_index;
       public            strapi    false    252                       1259    62885     files_related_morphs_order_index    INDEX     d   CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");
 4   DROP INDEX public.files_related_morphs_order_index;
       public            strapi    false    252            �           1259    62768    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            strapi    false    232            �           1259    62824    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            strapi    false    242            �           1259    62825    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            strapi    false    242            }           1259    63589    plan_ent_links_created_by_id_fk    INDEX     c   CREATE INDEX plan_ent_links_created_by_id_fk ON public.plan_ent_links USING btree (created_by_id);
 3   DROP INDEX public.plan_ent_links_created_by_id_fk;
       public            strapi    false    288            �           1259    63610 #   plan_ent_links_entitlement_links_fk    INDEX     |   CREATE INDEX plan_ent_links_entitlement_links_fk ON public.plan_ent_links_entitlement_links USING btree (plan_ent_link_id);
 7   DROP INDEX public.plan_ent_links_entitlement_links_fk;
       public            strapi    false    292            �           1259    63611 '   plan_ent_links_entitlement_links_inv_fk    INDEX     ~   CREATE INDEX plan_ent_links_entitlement_links_inv_fk ON public.plan_ent_links_entitlement_links USING btree (entitlement_id);
 ;   DROP INDEX public.plan_ent_links_entitlement_links_inv_fk;
       public            strapi    false    292            �           1259    63614 -   plan_ent_links_entitlement_links_order_inv_fk    INDEX     �   CREATE INDEX plan_ent_links_entitlement_links_order_inv_fk ON public.plan_ent_links_entitlement_links USING btree (plan_ent_link_order);
 A   DROP INDEX public.plan_ent_links_entitlement_links_order_inv_fk;
       public            strapi    false    292            �           1259    63598    plan_ent_links_plan_links_fk    INDEX     n   CREATE INDEX plan_ent_links_plan_links_fk ON public.plan_ent_links_plan_links USING btree (plan_ent_link_id);
 0   DROP INDEX public.plan_ent_links_plan_links_fk;
       public            strapi    false    290            �           1259    63599     plan_ent_links_plan_links_inv_fk    INDEX     i   CREATE INDEX plan_ent_links_plan_links_inv_fk ON public.plan_ent_links_plan_links USING btree (plan_id);
 4   DROP INDEX public.plan_ent_links_plan_links_inv_fk;
       public            strapi    false    290            �           1259    63602 &   plan_ent_links_plan_links_order_inv_fk    INDEX     {   CREATE INDEX plan_ent_links_plan_links_order_inv_fk ON public.plan_ent_links_plan_links USING btree (plan_ent_link_order);
 :   DROP INDEX public.plan_ent_links_plan_links_order_inv_fk;
       public            strapi    false    290            �           1259    63590    plan_ent_links_updated_by_id_fk    INDEX     c   CREATE INDEX plan_ent_links_updated_by_id_fk ON public.plan_ent_links USING btree (updated_by_id);
 3   DROP INDEX public.plan_ent_links_updated_by_id_fk;
       public            strapi    false    288            4           1259    63172    plans_created_by_id_fk    INDEX     Q   CREATE INDEX plans_created_by_id_fk ON public.plans USING btree (created_by_id);
 *   DROP INDEX public.plans_created_by_id_fk;
       public            strapi    false    264            E           1259    63261    plans_entitlements_links_fk    INDEX     c   CREATE INDEX plans_entitlements_links_fk ON public.plans_entitlements_links USING btree (plan_id);
 /   DROP INDEX public.plans_entitlements_links_fk;
       public            strapi    false    270            F           1259    63262    plans_entitlements_links_inv_fk    INDEX     n   CREATE INDEX plans_entitlements_links_inv_fk ON public.plans_entitlements_links USING btree (entitlement_id);
 3   DROP INDEX public.plans_entitlements_links_inv_fk;
       public            strapi    false    270            G           1259    63265 !   plans_entitlements_links_order_fk    INDEX     s   CREATE INDEX plans_entitlements_links_order_fk ON public.plans_entitlements_links USING btree (entitlement_order);
 5   DROP INDEX public.plans_entitlements_links_order_fk;
       public            strapi    false    270            H           1259    63266 %   plans_entitlements_links_order_inv_fk    INDEX     p   CREATE INDEX plans_entitlements_links_order_inv_fk ON public.plans_entitlements_links USING btree (plan_order);
 9   DROP INDEX public.plans_entitlements_links_order_inv_fk;
       public            strapi    false    270            M           1259    63274    plans_inherit_from_links_fk    INDEX     c   CREATE INDEX plans_inherit_from_links_fk ON public.plans_inherit_from_links USING btree (plan_id);
 /   DROP INDEX public.plans_inherit_from_links_fk;
       public            strapi    false    272            N           1259    63275    plans_inherit_from_links_inv_fk    INDEX     k   CREATE INDEX plans_inherit_from_links_inv_fk ON public.plans_inherit_from_links USING btree (inv_plan_id);
 3   DROP INDEX public.plans_inherit_from_links_inv_fk;
       public            strapi    false    272            O           1259    63278 %   plans_inherit_from_links_order_inv_fk    INDEX     p   CREATE INDEX plans_inherit_from_links_order_inv_fk ON public.plans_inherit_from_links USING btree (plan_order);
 9   DROP INDEX public.plans_inherit_from_links_order_inv_fk;
       public            strapi    false    272            8           1259    63195    plans_localizations_links_fk    INDEX     e   CREATE INDEX plans_localizations_links_fk ON public.plans_localizations_links USING btree (plan_id);
 0   DROP INDEX public.plans_localizations_links_fk;
       public            strapi    false    266            9           1259    63196     plans_localizations_links_inv_fk    INDEX     m   CREATE INDEX plans_localizations_links_inv_fk ON public.plans_localizations_links USING btree (inv_plan_id);
 4   DROP INDEX public.plans_localizations_links_inv_fk;
       public            strapi    false    266            :           1259    63199 "   plans_localizations_links_order_fk    INDEX     n   CREATE INDEX plans_localizations_links_order_fk ON public.plans_localizations_links USING btree (plan_order);
 6   DROP INDEX public.plans_localizations_links_order_fk;
       public            strapi    false    266            7           1259    63173    plans_updated_by_id_fk    INDEX     Q   CREATE INDEX plans_updated_by_id_fk ON public.plans USING btree (updated_by_id);
 *   DROP INDEX public.plans_updated_by_id_fk;
       public            strapi    false    264            �           1259    62730 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            strapi    false    226                       1259    62858 +   strapi_api_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);
 ?   DROP INDEX public.strapi_api_token_permissions_token_links_fk;
       public            strapi    false    248                       1259    62859 /   strapi_api_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);
 C   DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
       public            strapi    false    248                       1259    62862 5   strapi_api_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);
 I   DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
       public            strapi    false    248            �           1259    62731 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            strapi    false    226            �           1259    62721 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            strapi    false    224            �           1259    62722 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            strapi    false    224            �           1259    62750 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public            strapi    false    230            
           1259    62870 0   strapi_transfer_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_links_fk;
       public            strapi    false    250                       1259    62871 4   strapi_transfer_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);
 H   DROP INDEX public.strapi_transfer_token_permissions_token_links_inv_fk;
       public            strapi    false    250                       1259    62874 :   strapi_transfer_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);
 N   DROP INDEX public.strapi_transfer_token_permissions_token_links_order_inv_fk;
       public            strapi    false    250            �           1259    62751 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public            strapi    false    230            �           1259    62741 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public            strapi    false    228            �           1259    62742 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public            strapi    false    228            T           1259    63344    subscriptions_created_by_id_fk    INDEX     a   CREATE INDEX subscriptions_created_by_id_fk ON public.subscriptions USING btree (created_by_id);
 2   DROP INDEX public.subscriptions_created_by_id_fk;
       public            strapi    false    274            X           1259    63353    subscriptions_plan_links_fk    INDEX     k   CREATE INDEX subscriptions_plan_links_fk ON public.subscriptions_plan_links USING btree (subscription_id);
 /   DROP INDEX public.subscriptions_plan_links_fk;
       public            strapi    false    276            Y           1259    63354    subscriptions_plan_links_inv_fk    INDEX     g   CREATE INDEX subscriptions_plan_links_inv_fk ON public.subscriptions_plan_links USING btree (plan_id);
 3   DROP INDEX public.subscriptions_plan_links_inv_fk;
       public            strapi    false    276            Z           1259    63357 %   subscriptions_plan_links_order_inv_fk    INDEX     x   CREATE INDEX subscriptions_plan_links_order_inv_fk ON public.subscriptions_plan_links USING btree (subscription_order);
 9   DROP INDEX public.subscriptions_plan_links_order_inv_fk;
       public            strapi    false    276            W           1259    63345    subscriptions_updated_by_id_fk    INDEX     a   CREATE INDEX subscriptions_updated_by_id_fk ON public.subscriptions USING btree (updated_by_id);
 2   DROP INDEX public.subscriptions_updated_by_id_fk;
       public            strapi    false    274            �           1259    62791    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            strapi    false    236            $           1259    62918    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            strapi    false    258            %           1259    62919     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            strapi    false    258            &           1259    62922 &   up_permissions_role_links_order_inv_fk    INDEX     x   CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);
 :   DROP INDEX public.up_permissions_role_links_order_inv_fk;
       public            strapi    false    258            �           1259    62792    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            strapi    false    236            �           1259    62802    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            strapi    false    238            �           1259    62803    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            strapi    false    238            �           1259    62813    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            strapi    false    240            +           1259    62930    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            strapi    false    260            ,           1259    62931    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            strapi    false    260            -           1259    62934     up_users_role_links_order_inv_fk    INDEX     f   CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);
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
       public            strapi    false    234                       1259    62906    upload_folders_parent_links_fk    INDEX     k   CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);
 2   DROP INDEX public.upload_folders_parent_links_fk;
       public            strapi    false    256                       1259    62907 "   upload_folders_parent_links_inv_fk    INDEX     s   CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);
 6   DROP INDEX public.upload_folders_parent_links_inv_fk;
       public            strapi    false    256                       1259    62910 (   upload_folders_parent_links_order_inv_fk    INDEX     x   CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);
 <   DROP INDEX public.upload_folders_parent_links_order_inv_fk;
       public            strapi    false    256            �           1259    62783    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public            strapi    false    234            r           1259    63544    usageledgers_created_by_id_fk    INDEX     _   CREATE INDEX usageledgers_created_by_id_fk ON public.usageledgers USING btree (created_by_id);
 1   DROP INDEX public.usageledgers_created_by_id_fk;
       public            strapi    false    284            v           1259    63553 !   usageledgers_entitlement_links_fk    INDEX     v   CREATE INDEX usageledgers_entitlement_links_fk ON public.usageledgers_entitlement_links USING btree (usageledger_id);
 5   DROP INDEX public.usageledgers_entitlement_links_fk;
       public            strapi    false    286            w           1259    63554 %   usageledgers_entitlement_links_inv_fk    INDEX     z   CREATE INDEX usageledgers_entitlement_links_inv_fk ON public.usageledgers_entitlement_links USING btree (entitlement_id);
 9   DROP INDEX public.usageledgers_entitlement_links_inv_fk;
       public            strapi    false    286            x           1259    63557 +   usageledgers_entitlement_links_order_inv_fk    INDEX     �   CREATE INDEX usageledgers_entitlement_links_order_inv_fk ON public.usageledgers_entitlement_links USING btree (usageledger_order);
 ?   DROP INDEX public.usageledgers_entitlement_links_order_inv_fk;
       public            strapi    false    286            u           1259    63545    usageledgers_updated_by_id_fk    INDEX     _   CREATE INDEX usageledgers_updated_by_id_fk ON public.usageledgers USING btree (updated_by_id);
 1   DROP INDEX public.usageledgers_updated_by_id_fk;
       public            strapi    false    284            �           2606    62935 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          strapi    false    218    4028    220            �           2606    63065 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          strapi    false    244    4024    218            �           2606    63070 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          strapi    false    222    244    4032            �           2606    62940 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          strapi    false    218    4028    220            �           2606    62955 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          strapi    false    220    4028    222            �           2606    62960 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          strapi    false    4028    220    222            �           2606    62945 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          strapi    false    220    220    4028            �           2606    63075 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          strapi    false    4028    246    220            �           2606    63080 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          strapi    false    222    4032    246            �           2606    62950 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          strapi    false    4028    220    220            �           2606    63240 *   entitlements entitlements_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.entitlements
    ADD CONSTRAINT entitlements_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.entitlements DROP CONSTRAINT entitlements_created_by_id_fk;
       public          strapi    false    4028    268    220            �           2606    63245 *   entitlements entitlements_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.entitlements
    ADD CONSTRAINT entitlements_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.entitlements DROP CONSTRAINT entitlements_updated_by_id_fk;
       public          strapi    false    220    268    4028            �           2606    63462 "   features features_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.features
    ADD CONSTRAINT features_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.features DROP CONSTRAINT features_created_by_id_fk;
       public          strapi    false    220    4028    278            �           2606    63472 <   features_localizations_links features_localizations_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.features_localizations_links
    ADD CONSTRAINT features_localizations_links_fk FOREIGN KEY (feature_id) REFERENCES public.features(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.features_localizations_links DROP CONSTRAINT features_localizations_links_fk;
       public          strapi    false    4193    278    280            �           2606    63477 @   features_localizations_links features_localizations_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.features_localizations_links
    ADD CONSTRAINT features_localizations_links_inv_fk FOREIGN KEY (inv_feature_id) REFERENCES public.features(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.features_localizations_links DROP CONSTRAINT features_localizations_links_inv_fk;
       public          strapi    false    4193    280    278            �           2606    63513 ,   features_plans_links features_plans_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.features_plans_links
    ADD CONSTRAINT features_plans_links_fk FOREIGN KEY (feature_id) REFERENCES public.features(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.features_plans_links DROP CONSTRAINT features_plans_links_fk;
       public          strapi    false    282    278    4193            �           2606    63518 0   features_plans_links features_plans_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.features_plans_links
    ADD CONSTRAINT features_plans_links_inv_fk FOREIGN KEY (plan_id) REFERENCES public.plans(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.features_plans_links DROP CONSTRAINT features_plans_links_inv_fk;
       public          strapi    false    264    282    4150            �           2606    63467 "   features features_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.features
    ADD CONSTRAINT features_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.features DROP CONSTRAINT features_updated_by_id_fk;
       public          strapi    false    220    4028    278            �           2606    63005    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          strapi    false    232    220    4028            �           2606    63110 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          strapi    false    232    4052    254            �           2606    63115 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          strapi    false    4066    254    234            �           2606    63105 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          strapi    false    232    4052    252            �           2606    63010    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          strapi    false    232    220    4028            �           2606    63055 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          strapi    false    242    4028    220            �           2606    63060 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          strapi    false    4028    220    242            �           2606    63615 .   plan_ent_links plan_ent_links_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plan_ent_links
    ADD CONSTRAINT plan_ent_links_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.plan_ent_links DROP CONSTRAINT plan_ent_links_created_by_id_fk;
       public          strapi    false    4028    288    220            �           2606    63635 D   plan_ent_links_entitlement_links plan_ent_links_entitlement_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plan_ent_links_entitlement_links
    ADD CONSTRAINT plan_ent_links_entitlement_links_fk FOREIGN KEY (plan_ent_link_id) REFERENCES public.plan_ent_links(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.plan_ent_links_entitlement_links DROP CONSTRAINT plan_ent_links_entitlement_links_fk;
       public          strapi    false    4223    292    288            �           2606    63640 H   plan_ent_links_entitlement_links plan_ent_links_entitlement_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plan_ent_links_entitlement_links
    ADD CONSTRAINT plan_ent_links_entitlement_links_inv_fk FOREIGN KEY (entitlement_id) REFERENCES public.entitlements(id) ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.plan_ent_links_entitlement_links DROP CONSTRAINT plan_ent_links_entitlement_links_inv_fk;
       public          strapi    false    268    292    4161            �           2606    63625 6   plan_ent_links_plan_links plan_ent_links_plan_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plan_ent_links_plan_links
    ADD CONSTRAINT plan_ent_links_plan_links_fk FOREIGN KEY (plan_ent_link_id) REFERENCES public.plan_ent_links(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.plan_ent_links_plan_links DROP CONSTRAINT plan_ent_links_plan_links_fk;
       public          strapi    false    290    4223    288            �           2606    63630 :   plan_ent_links_plan_links plan_ent_links_plan_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plan_ent_links_plan_links
    ADD CONSTRAINT plan_ent_links_plan_links_inv_fk FOREIGN KEY (plan_id) REFERENCES public.plans(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.plan_ent_links_plan_links DROP CONSTRAINT plan_ent_links_plan_links_inv_fk;
       public          strapi    false    264    290    4150            �           2606    63620 .   plan_ent_links plan_ent_links_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plan_ent_links
    ADD CONSTRAINT plan_ent_links_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.plan_ent_links DROP CONSTRAINT plan_ent_links_updated_by_id_fk;
       public          strapi    false    220    4028    288            �           2606    63200    plans plans_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plans
    ADD CONSTRAINT plans_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.plans DROP CONSTRAINT plans_created_by_id_fk;
       public          strapi    false    220    264    4028            �           2606    63279 4   plans_entitlements_links plans_entitlements_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plans_entitlements_links
    ADD CONSTRAINT plans_entitlements_links_fk FOREIGN KEY (plan_id) REFERENCES public.plans(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.plans_entitlements_links DROP CONSTRAINT plans_entitlements_links_fk;
       public          strapi    false    270    264    4150            �           2606    63284 8   plans_entitlements_links plans_entitlements_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plans_entitlements_links
    ADD CONSTRAINT plans_entitlements_links_inv_fk FOREIGN KEY (entitlement_id) REFERENCES public.entitlements(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.plans_entitlements_links DROP CONSTRAINT plans_entitlements_links_inv_fk;
       public          strapi    false    4161    268    270            �           2606    63289 4   plans_inherit_from_links plans_inherit_from_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plans_inherit_from_links
    ADD CONSTRAINT plans_inherit_from_links_fk FOREIGN KEY (plan_id) REFERENCES public.plans(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.plans_inherit_from_links DROP CONSTRAINT plans_inherit_from_links_fk;
       public          strapi    false    264    4150    272            �           2606    63294 8   plans_inherit_from_links plans_inherit_from_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plans_inherit_from_links
    ADD CONSTRAINT plans_inherit_from_links_inv_fk FOREIGN KEY (inv_plan_id) REFERENCES public.plans(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.plans_inherit_from_links DROP CONSTRAINT plans_inherit_from_links_inv_fk;
       public          strapi    false    272    4150    264            �           2606    63215 6   plans_localizations_links plans_localizations_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plans_localizations_links
    ADD CONSTRAINT plans_localizations_links_fk FOREIGN KEY (plan_id) REFERENCES public.plans(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.plans_localizations_links DROP CONSTRAINT plans_localizations_links_fk;
       public          strapi    false    4150    266    264            �           2606    63220 :   plans_localizations_links plans_localizations_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plans_localizations_links
    ADD CONSTRAINT plans_localizations_links_inv_fk FOREIGN KEY (inv_plan_id) REFERENCES public.plans(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.plans_localizations_links DROP CONSTRAINT plans_localizations_links_inv_fk;
       public          strapi    false    264    4150    266            �           2606    63205    plans plans_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.plans
    ADD CONSTRAINT plans_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.plans DROP CONSTRAINT plans_updated_by_id_fk;
       public          strapi    false    264    4028    220            �           2606    62975 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          strapi    false    220    4028    226            �           2606    63085 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          strapi    false    4040    226    248            �           2606    63090 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          strapi    false    224    4036    248            �           2606    62980 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          strapi    false    4028    226    220            �           2606    62965 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          strapi    false    4028    224    220            �           2606    62970 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          strapi    false    4028    220    224            �           2606    62995 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public          strapi    false    230    4028    220            �           2606    63095 ^   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk    FK CONSTRAINT        ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_fk;
       public          strapi    false    250    4048    230            �           2606    63100 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk;
       public          strapi    false    250    4044    228            �           2606    63000 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public          strapi    false    220    230    4028            �           2606    62985 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public          strapi    false    228    220    4028            �           2606    62990 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public          strapi    false    220    228    4028            �           2606    63358 ,   subscriptions subscriptions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.subscriptions DROP CONSTRAINT subscriptions_created_by_id_fk;
       public          strapi    false    274    4028    220            �           2606    63368 4   subscriptions_plan_links subscriptions_plan_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subscriptions_plan_links
    ADD CONSTRAINT subscriptions_plan_links_fk FOREIGN KEY (subscription_id) REFERENCES public.subscriptions(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.subscriptions_plan_links DROP CONSTRAINT subscriptions_plan_links_fk;
       public          strapi    false    4182    274    276            �           2606    63373 8   subscriptions_plan_links subscriptions_plan_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subscriptions_plan_links
    ADD CONSTRAINT subscriptions_plan_links_inv_fk FOREIGN KEY (plan_id) REFERENCES public.plans(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.subscriptions_plan_links DROP CONSTRAINT subscriptions_plan_links_inv_fk;
       public          strapi    false    264    276    4150            �           2606    63363 ,   subscriptions subscriptions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.subscriptions DROP CONSTRAINT subscriptions_updated_by_id_fk;
       public          strapi    false    274    220    4028            �           2606    63025 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          strapi    false    220    236    4028            �           2606    63130 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          strapi    false    236    4070    258            �           2606    63135 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          strapi    false    4074    238    258            �           2606    63030 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          strapi    false    4028    220    236            �           2606    63035 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          strapi    false    220    238    4028            �           2606    63040 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          strapi    false    220    238    4028            �           2606    63045 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          strapi    false    4028    220    240            �           2606    63140 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          strapi    false    240    4078    260            �           2606    63145 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          strapi    false    238    260    4074            �           2606    63050 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          strapi    false    220    240    4028            �           2606    63015 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          strapi    false    234    4028    220            �           2606    63120 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          strapi    false    256    234    4066            �           2606    63125 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          strapi    false    234    4066    256            �           2606    63020 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          strapi    false    220    234    4028            �           2606    63558 *   usageledgers usageledgers_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.usageledgers
    ADD CONSTRAINT usageledgers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.usageledgers DROP CONSTRAINT usageledgers_created_by_id_fk;
       public          strapi    false    4028    284    220            �           2606    63568 @   usageledgers_entitlement_links usageledgers_entitlement_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.usageledgers_entitlement_links
    ADD CONSTRAINT usageledgers_entitlement_links_fk FOREIGN KEY (usageledger_id) REFERENCES public.usageledgers(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.usageledgers_entitlement_links DROP CONSTRAINT usageledgers_entitlement_links_fk;
       public          strapi    false    4212    284    286            �           2606    63573 D   usageledgers_entitlement_links usageledgers_entitlement_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.usageledgers_entitlement_links
    ADD CONSTRAINT usageledgers_entitlement_links_inv_fk FOREIGN KEY (entitlement_id) REFERENCES public.entitlements(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.usageledgers_entitlement_links DROP CONSTRAINT usageledgers_entitlement_links_inv_fk;
       public          strapi    false    4161    286    268            �           2606    63563 *   usageledgers usageledgers_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.usageledgers
    ADD CONSTRAINT usageledgers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.usageledgers DROP CONSTRAINT usageledgers_updated_by_id_fk;
       public          strapi    false    220    4028    284            l   ~  x��Z�r�6=�_�ѹ�@��u�=��f��)�dhvXS����d2��Ē�ą	�Ӥn/��l����],ѫCy�+�4=�:�I�����W�_���>\�A(�A��+�R�\�B'�?���uxɻ�����ب�C�[v�����Z��tjQ�J�ĭ w�� �q�[����ʼ_����+D��˶,��E��S'n5��d����h������J(����|NN��	��V!yFNi�0F�p+@ߤ�&�;q��J4�q\��1+�u���d�/��A�T�z�;Uu�}Vew�!�Vm��R����i��싶-�J[#W_7��*�v��z�1H����W�ϊҼ84�C�����y��ܼn��� o�{U�O�f�uZ�T��n�zwo_6u�6����؉C(�r(�J|��`i
�C �r N���C!<�PDˡ�U��B�4$�X��8;i��T���A���7%/
9քt���T;�G:$ǂoqO���J#S�2�R�E�aN[&�`&l\���2�t�'e82�YDN[H_
Dg{��������A`�x�ۘ,�ϙ5S�+opPxΠ(��ٳI��7)j.Ʊ�8h<sX�d"���Ad6-��CFb�	Z$fS�TeDb���B�D�4M�3�8	Е�8<��Z^q�.0�,JtQ�+�9��28h��Z�}�I-��Z-��ְ�{F1Fs��ƽ�<#��X�[��z}��vj(����Bwl
�8hF+4�<z��U���Y��U;�o�Ժ WO��U���F��S)�����R��A��^��<@�="�΄
v��{�&��ۧ,�!���/"݃p~�?��'�}�ܫN���38"���| T7����s��Hc��Ł[̸��N�M���͘��3&�a�hq��g�^K�n3n9p����ptO�8'��q���������3�]>�1='���$:2X�Áx��#IH1�-���#��0��,����+�'68�sb���Pnq +/;�Μ �g�Sm�Ȟ�G'�a�ZĄ� �;-�a�XɄ�h��8p'��r&�c��ñy�Z~�*��(Dء9�@��I��v��*�����uk�v�2���K+�3��A����X�]�U��j�w��TL��׈��pI,�@O%�6� �$��Ϸ���%��R�ru�AB�}�)	MGI�Jz�A&q�,�EOλ��U����ILW�N�2���q�uc'M{6�*�V�A��� S,q��,��St����d�	�Hi�1A�������x���`�R��jH�������h��!����\2dz���l:������ݬ���vYwl���χ�Q?in�n
mFV�5I��'�����l7�5O����C�,JCF$N��8�:����Ü��G5���K�?̉��tu��b86�����$^�8e�'RB����`��&�U�s�&� �����F�`��l9g)3��,w_����-�c�n�W��[����'�#�|�<\�+�V��T�����kw���-j{ܫ���]����;�7^�ц�Yq��}�z^�N|p�c/�Ȥ����zX|pd���t�i�H����ѝ/�9�M:|����gu:��_�{�dc�%����Xve�/��TS���QK}47v�|B�B7|"d����W�t^F\�O��q��ȺY}�nto�z�gԧ���Aiu�z3��~�_ ~����d*��%�X�<z���f>����������Gc9{w�a����>~}PMS�adbd��U7�`��6��Ov���0�->���r��?�9a�Q[���m�.�l_���R=�~_����/�?$�dXc��9��$r�|��	0t�`;�x�@N���;-��t�֖�����/���i      �   �  x�%�ۭ%!���Y�_@.7�8�{��#��]����f���H��Bi,6Zcs0�G+6/�W��iL�E*co(R9[�UKY[)
��C���p�����s/�}p�0�����P��ʋ�~>�v��M��P���dh��b�A�a��C�S�1k_�z4l?��cZ,�vmZlf!�=��iZ$s��E1uf�E3ul��0ur��a-�iqY:��t��b�dM���՘��j�w���A���:(ӲYeZ�L��^h��u֦�c�M����V�]h�*�r��J���� mZ5��M�a?�iu8cZ]��Ӵz�dZ/�1�7�0�upcZ'G���9�Oy1��pƴ><��b�y��N�����x�{.���y|�k�ɶ�m^	����'w� �񤯍��'�����D�O�w4��=M���K +�i,�f~-?�U�&�l^*o�B/�d�N/?2�i��Xl���%���ɽ�fj���R/�������?��e�c      p   �   x�u��n� @g����Q�]�d�r�K������%A�Z�����{�S�P��}8�X".����~3��3���@�w�g�J�T8���wnT�vCݎu�a��xԇ��&�|�Uu��:	q��2X*Vu�-�:;��/��y3'�@���A����7����%�W������2�'*�֘��&|f���_?��&/�KSU�7f#~�      n   �   x�3�LL�������҂�����Լ���ĢԼ�̼��L��DN�DC�Ȉ��P�"�B�Bs��b��p�$������@'��
�|?��̠Ԭ$�t�4�`��%�i ����T��\��D��������P����8X3W� �0�      �      x�3�4�@�=... �      �   %   x��I   �?a��.��!D��v%�Ti�W�E$      �   �   x�u�A�  ��
> ),��ͣ_�%DI�4���Ʀ6���L��&yKl\���Jt#�EMI��@t\0�������u�@������_W�# �VP��@��ݘ�x'9�gڙ�|�(��YT}��������b�;�/�E�㚝���"���J���!fd<ݾ�e�my�ўa��m�t�      �   ]  x�m��N� �5</0�(;c���h�K7�Jg�-4�c���F�5t�M�����[�'W����)�h����9�؍�&wD�DT[�,�W��/��Kh~\ 4�������r�>�s��Lc%h�
K&z��E�}=��_�&�����\Z��6j{ U���r �l=�w�ޥ��?�T����*��%6����g��<��%�m㩛_KZ[��4����/4��3�����w�qȇ��O�Oe��XRa���I��Jp�<-ߝ��Ű]��%Ӎ*�j�/��
����<m֌XN�dW��~�.�RP�����s��	=�m烛-\c%�J�-��e�R�w!����U      �      x������ � �      �   >   x�%��� ���a*� �t�9Z�c�CG�i���&.��7��IyY�e�V��h��|;A      z      x������ � �      �      x������ � �      �      x������ � �      �   ;   x�3�t�K��,�P�H���L��4202�50�50Q04�21"=KKS��1~@����� ��q      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�3�t+JMU�I��L/H�M�t@<##S]s]C3++=��@����A\F�I�ř�
��y%9�
`C�B�P!l� ������Nqt{�9�Rs3Ks"S����R ׭�c�����R���Wqt�b���� �MS      �   0   x�3�4�4bC.#�i ds��!�	'DԈ��2�q��qqq �Km      �      x�3�4�4�4�2�4��b���� @�      �      x������ � �      t      x������ � �      �      x������ � �      r   �   x�]�A�1ϞW�$˲�yľ ٖN��L��'�=-]���1�~�=?~��R���mN?ϤkF��C�O Sn���diŖu��Њ8�x8iHQ%�A�I]�����i�a����,�� ����+�6�*-]�(P8�d�l��e���@;��}m�}۶7��;u      h      x��]�7���y
����P+n�v2B&�N� ���_0X8�P]�Z�.U)u�N������O��V�rXbIU�l�����C�\�C�"�m����8KK���u�F�(�����ʣgMiy�A�l-�8�ͪ�g�^�gc��x2.PY����>����&�J�xV����8)Q�>)P��+�Ɇ0��I~_<���N�(��,q^�i�F��ZFUR�����{w��|A������i�%�P-�2b�Q�?����_R����5N�+��wH9�_A�6��ۉ�vC���3V�9��q%%��&�b���$yp���E�)m�<��}XM"7�u��*�}�����.�O�����g1���PR�ao�]�/ �!�T���#b5.�;o��B�:񾌒y��n\R�p��¬4P'�f|����q�oAͫˆ���Xg	*��es��f�Q���jXf(�WI� Pe�#����9Z�-�G�uE|1h;�:�����E%Z<-!ƛ�A�N%���67�M� ���;�+E[�q%����}��f�vo�M�Q��6����gU�l���CU*p�F4�'����}����t?�N�R������e+Y��0xQE֋�`���wk�k���9�=ȚH��o�g�տP\�������7��F�����R]0h���>Rl����]k�fQ-�S���T� N��!X�}x���?hZ��!�T���o��UJ�
�k�^x�k\���=��(ft h�5�~�L"+xЛ�ABf�����%*6h�A��!�n���:�.��w�@��@��Z�j>xQ7���h6�F抡�`�B��A�g� �>��$�k�-@���!x�?K\MY\�aU��-�a�� �̗d ��	�H���L�E<q�h<:h4��p�)tSf���(�C4.��6k��^F9���<�:�q�5��r��I0ĸ,�߆��^\F����N�R:���B�ӏg)��#J�0U!��/h{�}#��-��`R�In�����|2��@RS@4����VO1�.�,#��n��R흠��C@U�Gi�D9�o<wc,g� �Nr�����{��ު�J�UpW_�����H���j��Zݜn�In��7����g��C<��CbHHq
GH	�+ /���K5n���(	dҞ�{{eҚ���$�|�>���o:eU��K	>��r-'����тG;}�V+�P���v.8��0O�I�h1%�َ�)�'���aN#����h��*�x,�/�9�?d� ��Q�e�;�(W��`%e�V_��y%C0X��:U#��Q	.mȢANԨi��^���f�|�A䄽N��5{(m���5�M#{>k��o�AYA�� )A�������5��zp���[�?�t���iU��5&U�R�$�.|�%@ic��4$�j+~r)Z��x��@��uk~·V��`����!8�q�ۗ{�0Bb�N�@4��*a�E�F���
�	%�I�,�ؔ��zE������5'��~��XsP?m�E�"�E��#_t��Ն�쭗d���ψ�9��,-ȴ�L-;��,���e�QZ�W�_3}b4JGK_6!���T�U�9��]�0k&��v�����u�B�����������7�#��x�7���*�e�F����œ'?xt����҃^�<i�4���vB�a�>�|���I���E&&6[��Mſ�[ 
�M���P�q�-CA��T��2��I�H1cGr
�1�U�,w,:��!UR^+x���e�"��ء��r ���Nv��.QV����~_����s�۫�۴3�u�Ż�S��{e]Nq�}����vݯ���yf��!n9nޮ4� ����P��p��j�>�~����΀�>I�AU�H(��#h�f���5��g�wH(���u	���w锴�J٠�:d�~R/���e���7��w��r�m T����=U��w	���x�}��Q�>��k����+|h�$��x���%.�&���*J��I�д��N�є�6�r�Y�($�@�^8x���^ذ��%R�ʦ���0îA	��)��kv~C~��m�r��j!�;���;v����\N�9�	�
�c�/\7�H@"'~o��	��9��U�K	4��<<Opz3�~�k-��u�g�=%}r���-9$x�˗�(�1���W�9�����ß
�+��A�c�V�����[����}+��_�QZ�$����98f���[�d6�\�2�KV� j���=�u���K����$����`���r��x�뺌��� ��X�9�l����D$��즅Y����X��7;�U�����,�NP�B������媺jk�W��.{lW��fk�Y�-�6�p���.|�d��L��Y0�;\�"f@����x�i�4�Ӣ����[�j�th�~����&��qY�÷m�~{ӥ��]�M�!^��x�uh㕳�3:���Q�M,f��C]����|���1��ߌ�h��QQ0���:�e��U����Zd�=����i�sgk����隌�ϔ�!EZr�^�����b�d�
s? 1�_o1��=�V~��X�����)��Ě��GG�:J1��1�A��FB����$�2GY��w�LPk��I��;��{�ˉ���{��	��<W���'X����֙�hM~�hjT��Vܧ1�R.�.��_��ҏ�1��5F�Q��z�I(���h����7��l��?�GsY�6!�����V�D�IxN�����O4Z�����8J������LG$&��G����_��z��o���?B�G�t����?�[��hͿ�����tD���F�,I2�7�G�N��l�FHog&����������ÿ����o^����Dk��*Jo�)}6�?u���ڭ�T��*^�XAYǜ��qL7�Fc�̱��[f9�k����Cgb�":�u��H����2A��8��͈���+RdwS��6;�l�~z���I2�k�5/Z�Fi�t�*ſW�hq�Q��ˮ�K �Ȉ��z�VI�F*.p�ġ��X���<t��e�i�e�nq�g\_��D���}(���h
o�ؿ�����"N��"���V�Y���(a�P� �ʣ�*a{\g^XMlU]`�ht�^6�!�{.V-�#=���'���
�3����ϖe������1�7��2�U�>G�5=��B$ӕR5������E��]�)���`���x ����v�^�y�r��[2�O��� z��+�d��
�9J���$!J��d/S�d�D�_I1D���k�ư�u9�]�(1_��rm����,E�O�G����q�=0�x������Vi�����KL��&�����o���%��7�\0p�ΩRt�����oZ���6V���J0Swp�r%9�{YH\'�U��,]�yu�Q�[������o�_C��Ӵ�N����<��6��jp[��^�B=���E����%xAN.V(�=�fb���j\.�R��.�AȽٺ��6Gl΋�uV�NOcz�B�*#v'RN�k�ls��*�v�`��l��_�nJe-��6:"c��9�[�S�~�����ys�Btω�����sO�ͭ����f�ac�J%�tZ�s0�.6���b��.���i5ngg�����J�Wu��F��e�_9�E1���[��K���%��>�
��x��X�d~�%���)��xȭ�����B���f#t[�)���/7�7̐�.��F[@0�t�<�s��'m��5^�	yo�R��+@E���?����է��*��6��.��Q%g��'����݊�=@T�14�����j�r)��K�C��<K*��*I����T�����45˫wM�ɭz�x?��J�m�w��J�-�mL�w\۱ۆ���{��e�t��]	�0Q�]��M& ��as�|0���o�9�����Ƥ�+�d�wdC�6�=o� �  ���^�:e9D���mYE �Q~�})5����cN���pL��/W�{t]睳��2����|8"�i�D��YӉ�߈
.Ho4eH�^j˵E= �^~���#"i]��8p�)�y0�f6��`fO���,��}�6��=���"�{⼭Q{裛�n�O�T�د�H��O��������oi|߮��R���� u�C�$Y����j ]��>�-�1��X��K�/�8;I��'�=}5�h^���.��G���\)�[���B�zUvxa�ѓ6�>ҥ��b���u�5>d�����'F1^G���U����&G�ݽ����i.�ݷUNa.����Sf;���5�7�:�q�S�wb����i�8)ÈKc�^�2*A�6�:3@���$��asK�a���6\9͛�˜IƜ��|Ca��2~�jM}ʻ�RL6xG�B�	�=1}��5�~��(;�5�~��3���E�ZI���^�I�PK���~o�pH�!��%�ãQa&[O(2TbM�X6߲g̲�e=�Q�N��h��r�u�^�fXx^�$M:<�[v���h+���7sq�@R�H�s� *���B;w6�l���l'B�zi����ʲ�M'%��I��
p� ��PEQR��@W����x�m��Ӳ�=���N EQ�����2���զ}�h�ek��#2Od��D�x/�8@]���l�8����O���7s�>~�x����[�2��C1���7BP8vZ�rȴ�܎|�s;N�$�o|%x�#4x-���3<�y���]��c2`~��@��D�{_�+=6r����󩘝����@;qξ(AW�h8�q�l5�ٲʭK�<Z�O��eu�`�'�1/�h�)��IM��N\�up���z;}��ض�#Y?�	��=q��P��?�t{�I�G�v�*�t�lJ���qPi�:�1�������� ��V�C�w��}q�~��l�/�K�db">��mJQ��8�)(��5E�9z.	�e�9,�	�lm�1�=~�
�sg}�� 2N�Mo7t�t�p�\ϗ��V��b��chn��y]]�ӿ^|�BL0����]�	Z#z�y�7�@Z�)�d���95���׏Xz����K()+v�;��`��c�X���B�v�vcv��PS�?�z�6Zl��hV��{����2S�og۴i\��*=�p�9���5�r�k4�r��M�'o�'�I����7��B����.�?��)ٓ�=��c~"�i�Ť����B�C��:�V��j�Z�4x��as�3��/��`�z1}��*]]�?�o�>�4,�L!V�j|��˭DZKb��Mſ��x�-�WP5�|�u����	�30J�e����|�6��Bd�y�������A�c���ć�:Z����7'ͦ�è�܆��!�{)�nzOsj��1�[�'أ�����MW�o�L�4w��f�x\>{N�Ӣ���Wt�5�-���+�y���h����Ik�� �qc:=٘����@�r�̳�~�>��ʾ����)���@l����k�C\0aR6)�ׄ��g�o���BJ�Y��\uU��!íҙ�?��gB����BlD��B�Ǎ�dX=%6O
�6��`jp���'�xp�V������TQo;�@��.E����׮A�2���BM�cԅ�����YZ>�o��e#�پ�1�E?���\o�m��$Ur��j(�$���~�,hܧ�q�8un�<�۷�>E-1��
/�F]<��_��n M�M��o�#��çi��Cv���!F�K�T����eS�1���U��N��wŋ[Y]"[��d9�H%Jؙ�\Ĵᒁ+���l��^�Bs��
�������1�`0cp�_6�g�[n��l(>����n��J��⒵�1��i`�7p]��>��Dj�e�S�s{�h�UcMOjU�j�6���]гOS�w$����#���Ƌ�ϵo�Z|��,�����俯~s�%b.z2�(�k���ȯ��(ZZ�Y$Ws���S%��@eI�I�U�ܨ[^KLO�W�����m1��kv���h�S�Y͒������_�d����?����w&�h�ҍ��L4��
%���U.yD�j�>1�r�U|���y7�G�r��h61.~�'��G���K���o6�`���f�m��sa?�u6��dHU�[��TM�f��ƟO�V�u�����JGi��L��M�i4l
��R��ê�sirk~�qÀ@}0���M{+��V~��m�̇��jvB)=R��f�ں5{�WB�|F����n*Ŷڂ/�ʾ3Ĵ,�冾��ζŲ��ӧ�ëP�.�d_�?7������%5=�脆�|��w�-�end��΅զ_g���2�ua�.��v�J�G+���)�W����R����}�r��t�)�����)<j�fw���L$TU�`m	�`��DB[��(|hhR���4/�����r�Y�	hCG ��$,�
RQ�D���`YVJ�yo������&zD�^Y	��Ǐ����Ai��W��=6�;6�"�kx˞��#�E�V��ފ_��!D��#%�W�&�Z���l�+`����N�W`<��� �܈b' .8 L7Nhl:!�e���G
�Ȋ
*ê���;32tXܖ�10�לl��Q�(����`�Z>\����.yL��=�2_�\V2̰
�^CZ���-Ԕ��Fއ[gҙɸ[��%��82���@Ն�
܎���l����q#% � P�H�jx[�Ÿ��P��-�(I@˨����n�w��"�0X0?ֲ�M/.����m�5"u��Vh?�
ms��(y� �;�����n��<7u �+[��n׀��-�옙-�=Ͻ}y�������w�]l��<���5�&�p� ���yi�	��3_�
`Q����{�Ճ6��ul_��1��A�	q�٘4y�?����Y��컍yT�+����Rl�ȳ��&CG�RL���n���U����9����O�=5��m��W_�?��      f   �  x��]Ks�6>'��óڱݺM|�=t����p �PS�
�Σ��^>E�@ �ґ�C[�] �o���񟗡m�S�������E'�	�~�U?q��x�z��!�P���v�C�����$ʏq��E����=(>�8+���O���=d4Ǜ�����s��ʣ�m�=�ym�8�~/~)uo��qZ�C�a��ޜUx,��:�+��ɟD��d�O(�q' ��ދ�x_}4_P% �!8~"4������}�w��ƀ���!I/�j�� �!��F{�(�4�D��&�֪�>5c& .2�M��خբ�Hb��鑤)I�݊���u�����OB�����zR�~~
%H���h*��q�Q�������@�imJ��7J]5����:��������7�^������
�� ����-��`I"ͷ�� ԯ�hR�UF0d;�$I����f>"���i���%�m������x'�R�)���i��O��{V%���L��1����$�HИ�[�����L�Rc�u+z�;���ȕ�M3�x6B�2ʑ�����D�~
������2(Nq淒�,yĠ��{R.���\I�2vyb��ڒ������d���,Ǆ~��}������+haiXQ�V�v�
���
���(����A��8(9A/��^3�6���*��礼1��l�L!�xf�)_iB�kCA���~5Y��K{f��N�X>�����ْ�/�ٹ�5���v�֜0�k<{�/���=/�r���
h���ŔPYz�Υ�!�eқ��t7��+"�+Y���[.8?y%~Ry� �f�{B�l�aq���n���wD��8?E	*�ZY��%QXL��~U�?����.굊�묊�؜Zg<4�x����x8UY%��|�"���!�ܦ4G������9����_�"�DCQVf��Z~s��[!��{,g���Ŕ:d�"�y{D��v(=@�!	줨\A���E��ۛ͝����&�R�D�{\L�D����e�G��� ���K.pw��Q��F��-MD�u�&xyqe�-���{B�¥@0�c�`lE�s��a�4�Ų�n�26s��9�9�az{�_f�l\����ݖ��-iG`3	Lr��}:���_2������$�@��;��r���A�>�óvo�0��gݽ�]���Wx%D��;R�eZ�J�F�uK\	��5{]r�*�+B�;^����e1l�_c� =�qCW䄡0�-�����@��<-XB�A��j�i���s	6ծx��k���kI��Mu�j/K��b���vJ�=I�k`��ۦzD�6ǭY�`JЅ�sP��vE�r*z�>5ϻn��^i�}m��y��� 9*��, �u,xm,Ȝ�m�+,�'K����U�G�[׶E��@r�A�VD��ـ4	� ��>�E@�����4C4�K�yF�4�q��z8����\�V�q�G$~�����,G����x��A�>���V�,~�)%�F�[8�ԻJ%ߞ��Dצ�E̯H�X��\7ЫO��"k.�)�}���~�<��'��뵞;�M(ٓE��;�W���.���i���/b%��5{�<E��Hý8��)a�M˂X˨5�4�ָ��!�D�E`���;�1�c��Ŏ������xJ�*��ܗ�#���f�����_�M&Y��vņ�H
C�T�X�����gӁJ
�އr�eD�/M��h[�S��H���G�����?������ *#��C�<�����l"��ھ1��΁$�6�V�������$��
��&�Q��5��<���)u�#���խeU^#+%U�I�ύ&}X�0����� ����1p��3�*xv�~�M����Tk�l�Wc�;�
Λ\]-STm����I�TY���ZL����$��o��3�Ek���ű��j�(����Y4&���_�:� F-�&�;E1��3�:�ǩҦlx��UQ1Ŋ�R�Y��5�.闂(Ѯ]��ъ�c�);���q�/'lQR�ﾧ8�6Z�	=DgY8%Gv[�a�UlYdtA�x̭OB����h�N���j���k�:㢦[�X�u`76H��kGp���4��Kb�q9��߫�sxM��ʼh�3[F�p`�QM>��t�E*��њj��w��'��k!��}4���'D'��%'��g��g�H\�`n�*a�	���ӄbء�����q���~Ó�̣�� ,��� �P}�(F��� �`)Y��#�'��^����+u��]����mU�eXP)1�WO�MFu�'$�Pg�hu���TK ��땰�ud,�R�|M}i�l'�Sr�ׅ���u���<��R����o:$َ���T�qvi��eP���Ɗno��tɾ,�C��I{��EqL���b��K�E@'(��~:��1 �P}�T��85�鍇!� 0��d�!�
���IЀ�t{��L�Ȯb+'�A�Bn�,F=���;q�	��RD$��3d��2w��쌆��J��<�&��A�4]鏆� �Ҹjj4�c��Hj��hлI�� ���D%�S��;���p\Z�
9�E>]D΃=�I��[�-���-�AX�Zq�b��2��騼�� �U��M
Q_�i�V��� 8q�e���O��&���iЖ� Fu�[� �V�]o���x�,J�XL{�`F�.���AZ����ⷶ6� ��:u�՚EAc4�")�"/inIE���I�/JVfù����l�������T�$*=�K���l�D5rp�o��Z�$!&�� ���]�{Lrpm���N��YC�46�K�8�
����i�-��pr���Gنr$�8i�����M+F�'�o�*�9��m�|����ɏ�oEq��֮ *��}�z��������7?|}s�������÷���~�����[���������&������������/_��uW      d      x������ � �      x      x������ � �      �      x������ � �      v      x������ � �      j      x������ � �      �   �  x���K��0���)�!ħD�'�� �E�����/�N�4�W���I��$j����|�q�L���>THO����a�{i����T:IW;�L���t�xx������T��i}�Gb�G�;"h�rxȗ�����nP��(��L�A�eĠ��5u�N�c렌�]�?ο����No�EPT���*�k�U�3w��� K����W�< ��6�y{({*�M�PQ*O\���hC}L��K���h��)n-#&��J�J�`�HPq$���1}R��t�ѓš�)l�1�R��i�.
�4�'�GL�/<�;(�PS��qMZ�I�G��>�4:ni���V���	E5ǦQ\yX�
�6�'T��-E��y[;O�:�����<�@��t0��>�4ƜJ��9��>��u�ǝ>����!���ᙜ      �   n   x���	E1���K�d����_�U"Y���B��3?.,��F{7����q7/�{��5��Rƅ�(�Bՠ&_(��VQ��'���("QS�ģM��k�����#��Q�      ~   �   x���M�0F�p
/@S~�l�[��T��?�S��Ű�4A�o��e&�f��B7͂`1��*�(�F�!DA�ѬL(KhqJ�`�HEK/oo��l��7�n�z�;G|����
�����Wc��7���sM�图�cG�v��T�
(.���AX����X(d��k�pd����C~�_�����q�`p��      �   5   x�ȹ  ���[�����l�T������X6v��d�E�Ͷ�H�c�	)      �   w   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"�id`d�k`�k`�`hlebDzF�F8�c���ˈ3�4)'3���y�,.�h�f���!Nq��1z\\\ [�E�      �   �   x�3�,I-.)-N-3R+srR���s9s�s8U�UT���R��Ì���M�=2���3K�RS��-]Ls]�"�-|CÂS]S��ݍ8c�@��3�����T��\��T��������L���0XW� �+�      �      x�3�4A�=... ��      |      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     