.class public final Lcom/google/android/gms/internal/zznd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field private static final zzTJ:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/gms/internal/zznd;->zzTJ:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private static zzB(Z)Ljava/lang/Integer;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;)Lcom/google/android/gms/internal/zzmn;
    .locals 48

    :try_start_0
    new-instance v28, Lorg/json/JSONObject;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "ad_base_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "ad_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "ad_size"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v4, "ad_slot_size"

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/gms/internal/zzmk;->zzRE:I

    if-eqz v4, :cond_3

    const/16 v27, 0x1

    :goto_0
    const-string v4, "ad_json"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v4, "ad_html"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    if-nez v5, :cond_1

    const-string v4, "body"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    const-wide/16 v20, -0x1

    const-string v4, "debug_dialog"

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v4, "debug_signals"

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    const-string v4, "interstitial_timeout"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "interstitial_timeout"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    double-to-long v12, v8

    :goto_1
    const-string v4, "orientation"

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v18, -0x1

    const-string v8, "portrait"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzpp;->zzkR()I

    move-result v18

    :cond_2
    :goto_2
    const/4 v4, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzmk;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iget-object v6, v4, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v11}, Lcom/google/android/gms/internal/zznc;->zza(Lcom/google/android/gms/internal/zzmk;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zznh;Lcom/google/android/gms/internal/zzgl;Lcom/google/android/gms/internal/zznb;)Lcom/google/android/gms/internal/zzmn;

    move-result-object v4

    iget-object v6, v4, Lcom/google/android/gms/internal/zzmn;->zzNJ:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/internal/zzmn;->body:Ljava/lang/String;

    iget-wide v0, v4, Lcom/google/android/gms/internal/zzmn;->zzSr:J

    move-wide/from16 v20, v0

    :goto_3
    if-nez v7, :cond_6

    new-instance v4, Lcom/google/android/gms/internal/zzmn;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    :goto_4
    return-object v4

    :cond_3
    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_4
    const-wide/16 v12, -0x1

    goto :goto_1

    :cond_5
    const-string v8, "landscape"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzpp;->zzkQ()I

    move-result v18

    goto :goto_2

    :cond_6
    const-string v5, "click_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v4, :cond_c

    const/4 v8, 0x0

    :goto_5
    if-eqz v5, :cond_7

    invoke-static {v5, v8}, Lcom/google/android/gms/internal/zznd;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    :cond_7
    const-string v5, "impression_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v4, :cond_d

    const/4 v9, 0x0

    :goto_6
    if-eqz v5, :cond_8

    invoke-static {v5, v9}, Lcom/google/android/gms/internal/zznd;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    :cond_8
    const-string v5, "manual_impression_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v4, :cond_e

    const/4 v15, 0x0

    :goto_7
    if-eqz v5, :cond_9

    invoke-static {v5, v15}, Lcom/google/android/gms/internal/zznd;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    :cond_9
    if-eqz v4, :cond_10

    iget v5, v4, Lcom/google/android/gms/internal/zzmn;->orientation:I

    const/4 v10, -0x1

    if-eq v5, v10, :cond_a

    iget v0, v4, Lcom/google/android/gms/internal/zzmn;->orientation:I

    move/from16 v18, v0

    :cond_a
    iget-wide v10, v4, Lcom/google/android/gms/internal/zzmn;->zzSm:J

    const-wide/16 v16, 0x0

    cmp-long v5, v10, v16

    if-lez v5, :cond_10

    iget-wide v10, v4, Lcom/google/android/gms/internal/zzmn;->zzSm:J

    :goto_8
    const-string v4, "active_view"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v24, 0x0

    const-string v4, "ad_is_javascript"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_b

    const-string v4, "ad_passback_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    :cond_b
    const-string v4, "mediation"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string v4, "custom_render_allowed"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v4, "content_url_opted_out"

    const/4 v5, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v29

    const-string v4, "content_vertical_opted_out"

    const/4 v5, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v46

    const-string v4, "prefetch"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v30

    const-string v4, "refresh_interval_milliseconds"

    const-wide/16 v16, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v16

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v4, "mediation_config_cache_time_milliseconds"

    const-wide/16 v32, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v32

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v4, "gws_query_id"

    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v4, "height"

    const-string v5, "fluid"

    const-string v32, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    const-string v4, "native_express"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v33

    const-string v4, "video_start_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zznd;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v35

    const-string v4, "video_complete_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zznd;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v36

    const-string v4, "rewards"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzoo;->zza(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/zzoo;

    move-result-object v34

    const-string v4, "use_displayed_impression"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v37

    const-string v4, "auto_protection_configuration"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzmp;->zzf(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzmp;

    move-result-object v38

    const-string v4, "set_cookie"

    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string v4, "remote_ping_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zznd;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v41

    const-string v4, "safe_browsing"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzor;->zzh(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzor;

    move-result-object v44

    const-string v4, "render_in_browser"

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/google/android/gms/internal/zzmk;->zzKJ:Z

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v42

    new-instance v4, Lcom/google/android/gms/internal/zzmn;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmk;->zzRG:Z

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmk;->zzRV:Z

    move/from16 v39, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzmk;->zzSh:Z

    move/from16 v47, v0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v47}, Lcom/google/android/gms/internal/zzmn;-><init>(Lcom/google/android/gms/internal/zzmk;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/zzor;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v4

    const-string v5, "Could not parse the inline ad response: "

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_9
    invoke-static {v4}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/zzmn;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzmn;-><init>(I)V

    goto/16 :goto_4

    :cond_c
    :try_start_1
    iget-object v8, v4, Lcom/google/android/gms/internal/zzmn;->zzKF:Ljava/util/List;

    goto/16 :goto_5

    :cond_d
    iget-object v9, v4, Lcom/google/android/gms/internal/zzmn;->zzKG:Ljava/util/List;

    goto/16 :goto_6

    :cond_e
    iget-object v15, v4, Lcom/google/android/gms/internal/zzmn;->zzSp:Ljava/util/List;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :cond_f
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    move-wide v10, v12

    goto/16 :goto_8

    :cond_11
    move-object v7, v5

    goto/16 :goto_3
.end method

.method private static zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 p1, 0x0

    :cond_0
    return-object p1

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzna;)Lorg/json/JSONObject;
    .locals 17
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzna;->zzTi:Lcom/google/android/gms/internal/zzmk;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/zzna;->zzzb:Landroid/location/Location;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/zzna;->zzTj:Lcom/google/android/gms/internal/zzni;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/android/gms/internal/zzna;->zzRF:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/gms/internal/zzna;->zzTk:Lorg/json/JSONObject;

    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v2, "extra_caps"

    sget-object v3, Lcom/google/android/gms/internal/zzgd;->zzEe:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzna;->zzRM:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "eid"

    const-string v3, ","

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzna;->zzRM:Ljava/util/List;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzRx:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const-string v2, "ad_pos"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->zzRx:Landroid/os/Bundle;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/zznd;->zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzec;)V

    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzeg;->zzzA:[Lcom/google/android/gms/internal/zzeg;

    if-nez v2, :cond_5

    const-string v2, "format"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzeg;->zzzy:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzeg;->zzzC:Z

    if-eqz v2, :cond_2

    const-string v2, "fluid"

    const-string v3, "height"

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget v2, v2, Lcom/google/android/gms/internal/zzeg;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const-string v2, "smart_w"

    const-string v3, "full"

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget v2, v2, Lcom/google/android/gms/internal/zzeg;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_4

    const-string v2, "smart_h"

    const-string v3, "auto"

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzeg;->zzzA:[Lcom/google/android/gms/internal/zzeg;

    if-eqz v2, :cond_10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v12, v2, Lcom/google/android/gms/internal/zzeg;->zzzA:[Lcom/google/android/gms/internal/zzeg;

    array-length v13, v12

    const/4 v2, 0x0

    move v4, v2

    move v2, v3

    :goto_0
    if-ge v4, v13, :cond_d

    aget-object v14, v12, v4

    iget-boolean v3, v14, Lcom/google/android/gms/internal/zzeg;->zzzC:Z

    if-eqz v3, :cond_9

    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v11, v2, Lcom/google/android/gms/internal/zzeg;->zzzA:[Lcom/google/android/gms/internal/zzeg;

    array-length v12, v11

    const/4 v2, 0x0

    move/from16 v16, v2

    move v2, v3

    move v3, v4

    move/from16 v4, v16

    :goto_2
    if-ge v4, v12, :cond_2

    aget-object v13, v11, v4

    iget-boolean v14, v13, Lcom/google/android/gms/internal/zzeg;->zzzC:Z

    if-nez v14, :cond_6

    if-nez v3, :cond_6

    const-string v3, "format"

    iget-object v14, v13, Lcom/google/android/gms/internal/zzeg;->zzzy:Ljava/lang/String;

    invoke-virtual {v10, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    :cond_6
    iget-boolean v13, v13, Lcom/google/android/gms/internal/zzeg;->zzzC:Z

    if-eqz v13, :cond_7

    if-nez v2, :cond_7

    const-string v2, "fluid"

    const-string v13, "height"

    invoke-virtual {v10, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_7
    if-eqz v3, :cond_8

    if-nez v2, :cond_2

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "|"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget v3, v14, Lcom/google/android/gms/internal/zzeg;->width:I

    const/4 v15, -0x1

    if-ne v3, v15, :cond_b

    iget v3, v14, Lcom/google/android/gms/internal/zzeg;->widthPixels:I

    int-to-float v3, v3

    iget v15, v7, Lcom/google/android/gms/internal/zzni;->zzxk:F

    div-float/2addr v3, v15

    float-to-int v3, v3

    :goto_3
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v14, Lcom/google/android/gms/internal/zzeg;->height:I

    const/4 v15, -0x2

    if-ne v3, v15, :cond_c

    iget v3, v14, Lcom/google/android/gms/internal/zzeg;->heightPixels:I

    int-to-float v3, v3

    iget v14, v7, Lcom/google/android/gms/internal/zzni;->zzxk:F

    div-float/2addr v3, v14

    float-to-int v3, v3

    :goto_4
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Problem serializing ad request to JSON: "

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2f

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-static {v2}, Lcom/google/android/gms/internal/zzpk;->zzbh(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_6
    return-object v2

    :cond_b
    :try_start_1
    iget v3, v14, Lcom/google/android/gms/internal/zzeg;->width:I

    goto :goto_3

    :cond_c
    iget v3, v14, Lcom/google/android/gms/internal/zzeg;->height:I

    goto :goto_4

    :cond_d
    if-eqz v2, :cond_f

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    const-string v3, "|"

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const/4 v2, 0x0

    const-string v3, "320x50"

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v2, "sz"

    invoke-virtual {v10, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->zzRE:I

    if-eqz v2, :cond_11

    const-string v2, "native_version"

    iget v3, v5, Lcom/google/android/gms/internal/zzmk;->zzRE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "native_templates"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->zzvK:Ljava/util/List;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "native_image_orientation"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->zzvF:Lcom/google/android/gms/internal/zzhc;

    invoke-static {v3}, Lcom/google/android/gms/internal/zznd;->zzc(Lcom/google/android/gms/internal/zzhc;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzRN:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "native_custom_templates"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->zzRN:Ljava/util/List;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzeg;->zzzD:Z

    if-eqz v2, :cond_12

    const-string v2, "ene"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzvH:Lcom/google/android/gms/internal/zzfc;

    if-eqz v2, :cond_13

    const-string v2, "is_icon_ad"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "icon_ad_expansion_behavior"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->zzvH:Lcom/google/android/gms/internal/zzfc;

    iget v3, v3, Lcom/google/android/gms/internal/zzfc;->zzzZ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    const-string v2, "slotname"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->zzvl:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pn"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzRz:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_14

    const-string v2, "vc"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->zzRz:Landroid/content/pm/PackageInfo;

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const-string v2, "ms"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzna;->zzRA:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "seq_num"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->zzRB:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "session_id"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->zzRC:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "js"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzqh;->zzba:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzna;->zzTg:Lcom/google/android/gms/internal/zznm$zza;

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->zzSa:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzna;->zzTf:Landroid/os/Bundle;

    invoke-static {v10, v7, v2, v3, v4}, Lcom/google/android/gms/internal/zznd;->zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzni;Lcom/google/android/gms/internal/zznm$zza;Landroid/os/Bundle;Landroid/os/Bundle;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v10, v0, v1}, Lcom/google/android/gms/internal/zznd;->zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzna;Landroid/content/Context;)V

    const-string v2, "platform"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "submodel"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_2b

    invoke-static {v10, v6}, Lcom/google/android/gms/internal/zznd;->zza(Ljava/util/HashMap;Landroid/location/Location;)V

    :cond_15
    :goto_7
    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_16

    const-string v2, "quality_signals"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->zzRD:Landroid/os/Bundle;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_17

    iget-boolean v2, v5, Lcom/google/android/gms/internal/zzmk;->zzRG:Z

    if-eqz v2, :cond_17

    const-string v2, "forceHttps"

    iget-boolean v3, v5, Lcom/google/android/gms/internal/zzmk;->zzRG:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    if-eqz v8, :cond_18

    const-string v2, "content_info"

    invoke-virtual {v10, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2c

    const-string v2, "u_sd"

    iget v3, v5, Lcom/google/android/gms/internal/zzmk;->zzxk:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sh"

    iget v3, v5, Lcom/google/android/gms/internal/zzmk;->zzRI:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sw"

    iget v3, v5, Lcom/google/android/gms/internal/zzmk;->zzRH:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1a

    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzRJ:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_19

    :try_start_2
    const-string v2, "view_hierarchy"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, v5, Lcom/google/android/gms/internal/zzmk;->zzRJ:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_19
    :goto_9
    :try_start_3
    const-string v2, "correlation_id"

    iget-wide v6, v5, Lcom/google/android/gms/internal/zzmk;->zzRK:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_1b

    const-string v2, "request_id"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->zzRL:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1c

    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzRP:Lcom/google/android/gms/internal/zzmr;

    if-eqz v2, :cond_1c

    const-string v2, "capability"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->zzRP:Lcom/google/android/gms/internal/zzmr;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzmr;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_1d

    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzRQ:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "anchor"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->zzRQ:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_1e

    const-string v2, "android_app_volume"

    iget v3, v5, Lcom/google/android/gms/internal/zzmk;->zzRR:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_1f

    const-string v2, "android_app_muted"

    iget-boolean v3, v5, Lcom/google/android/gms/internal/zzmk;->zzRX:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_20

    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->zzRS:I

    if-lez v2, :cond_20

    const-string v2, "target_api"

    iget v3, v5, Lcom/google/android/gms/internal/zzmk;->zzRS:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_21

    const-string v3, "scroll_index"

    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->zzRT:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2d

    const/4 v2, -0x1

    :goto_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_22

    const-string v2, "_activity_context"

    iget-boolean v3, v5, Lcom/google/android/gms/internal/zzmk;->zzRU:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_24

    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzRY:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    if-nez v2, :cond_23

    :try_start_4
    const-string v2, "app_settings"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, v5, Lcom/google/android/gms/internal/zzmk;->zzRY:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_23
    :goto_b
    :try_start_5
    const-string v2, "render_in_browser"

    iget-boolean v3, v5, Lcom/google/android/gms/internal/zzmk;->zzKJ:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_25

    const-string v2, "android_num_video_cache_tasks"

    iget v3, v5, Lcom/google/android/gms/internal/zzmk;->zzRZ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzvn:Lcom/google/android/gms/internal/zzqh;

    move-object/from16 v0, p0

    invoke-static {v0, v10, v2}, Lcom/google/android/gms/internal/zznd;->zza(Landroid/content/Context;Ljava/util/HashMap;Lcom/google/android/gms/internal/zzqh;)V

    const-string v2, "cache_state"

    invoke-virtual {v10, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_26

    const-string v2, "gct"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->zzSb:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_27

    iget-boolean v2, v5, Lcom/google/android/gms/internal/zzmk;->zzSc:Z

    if-eqz v2, :cond_27

    const-string v2, "de"

    const-string v3, "1"

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    sget-object v2, Lcom/google/android/gms/internal/zzgd;->zzDc:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {v10, v5}, Lcom/google/android/gms/internal/zznd;->zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzmk;)V

    :cond_28
    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->versionCode:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_29

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzdl()Lcom/google/android/gms/internal/zzow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzow;->zzjQ()Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v2, "gmp_app_id"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->zzSe:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fbs_aiid"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->zzSf:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fbs_aeid"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzmk;->zzSg:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzpk;->zzak(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/zzpo;->zzQ(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ad Request JSON: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2e

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_c
    invoke-static {v2}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    :cond_2a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/zzpo;->zzQ(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_6

    :cond_2b
    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    iget v2, v2, Lcom/google/android/gms/internal/zzec;->versionCode:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_15

    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzec;->zzzb:Landroid/location/Location;

    if-eqz v2, :cond_15

    iget-object v2, v5, Lcom/google/android/gms/internal/zzmk;->zzRy:Lcom/google/android/gms/internal/zzec;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzec;->zzzb:Landroid/location/Location;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/zznd;->zza(Ljava/util/HashMap;Landroid/location/Location;)V

    goto/16 :goto_7

    :cond_2c
    const-string v2, "u_sd"

    iget v3, v7, Lcom/google/android/gms/internal/zzni;->zzxk:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sh"

    iget v3, v7, Lcom/google/android/gms/internal/zzni;->zzRI:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sw"

    iget v3, v7, Lcom/google/android/gms/internal/zzni;->zzRH:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :catch_1
    move-exception v2

    const-string v3, "Problem serializing view hierarchy to JSON"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_2d
    iget v2, v5, Lcom/google/android/gms/internal/zzmk;->zzRT:I

    goto/16 :goto_a

    :catch_2
    move-exception v2

    const-string v3, "Problem creating json from app settings"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_2e
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_c

    :cond_2f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method private static zza(Landroid/content/Context;Ljava/util/HashMap;Lcom/google/android/gms/internal/zzqh;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzqh;",
            ")V"
        }
    .end annotation

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "cl"

    const-string v3, "154081933"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rapid_rc"

    const-string v3, "dev"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rapid_rollup"

    const-string v3, "HEAD"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "build_meta"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "mf"

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzEg:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "instant_app"

    invoke-static {p0}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzadf;->zzzx()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "lite"

    iget-boolean v2, p2, Lcom/google/android/gms/internal/zzqh;->zzYZ:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "sdk_env"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zza(Ljava/util/HashMap;Landroid/location/Location;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    const-wide v6, 0x416312d000000000L    # 1.0E7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "radius"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lat"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "long"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uule"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzec;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzec;",
            ")V"
        }
    .end annotation

    const/4 v6, -0x1

    invoke-static {}, Lcom/google/android/gms/internal/zzpi;->zzkF()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "abf"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-wide v0, p1, Lcom/google/android/gms/internal/zzec;->zzyT:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-string v0, "cust_age"

    sget-object v1, Lcom/google/android/gms/internal/zznd;->zzTJ:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzec;->zzyT:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v0, "extras"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v0, p1, Lcom/google/android/gms/internal/zzec;->zzyU:I

    if-eq v0, v6, :cond_3

    const-string v0, "cust_gender"

    iget v1, p1, Lcom/google/android/gms/internal/zzec;->zzyU:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzyV:Ljava/util/List;

    if-eqz v0, :cond_4

    const-string v0, "kw"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzec;->zzyV:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v0, p1, Lcom/google/android/gms/internal/zzec;->zzyX:I

    if-eq v0, v6, :cond_5

    const-string v0, "tag_for_child_directed_treatment"

    iget v1, p1, Lcom/google/android/gms/internal/zzec;->zzyX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzec;->zzyW:Z

    if-eqz v0, :cond_6

    const-string v0, "adtest"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v0, p1, Lcom/google/android/gms/internal/zzec;->versionCode:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzec;->zzyY:Z

    if-eqz v0, :cond_7

    const-string v0, "d_imp_hdr"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzyZ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ppid"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzec;->zzyZ:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzza:Lcom/google/android/gms/internal/zzfp;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzza:Lcom/google/android/gms/internal/zzfp;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zznd;->zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzfp;)V

    :cond_9
    iget v0, p1, Lcom/google/android/gms/internal/zzec;->versionCode:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzzc:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "url"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzec;->zzzc:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget v0, p1, Lcom/google/android/gms/internal/zzec;->versionCode:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_d

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzze:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    const-string v0, "custom_targeting"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzec;->zzze:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzzf:Ljava/util/List;

    if-eqz v0, :cond_c

    const-string v0, "category_exclusions"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzec;->zzzf:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzzg:Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string v0, "request_agent"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzec;->zzzg:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget v0, p1, Lcom/google/android/gms/internal/zzec;->versionCode:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_e

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzzh:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, "request_pkg"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzec;->zzzh:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget v0, p1, Lcom/google/android/gms/internal/zzec;->versionCode:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_f

    const-string v0, "is_designed_for_families"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzec;->zzzi:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzfp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzfp;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAH:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "acolor"

    iget v2, p1, Lcom/google/android/gms/internal/zzfp;->zzAH:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zznd;->zzab(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, p1, Lcom/google/android/gms/internal/zzfp;->backgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "bgcolor"

    iget v2, p1, Lcom/google/android/gms/internal/zzfp;->backgroundColor:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zznd;->zzab(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAI:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAJ:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "gradientto"

    iget v2, p1, Lcom/google/android/gms/internal/zzfp;->zzAI:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zznd;->zzab(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gradientfrom"

    iget v2, p1, Lcom/google/android/gms/internal/zzfp;->zzAJ:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zznd;->zzab(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAK:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "bcolor"

    iget v2, p1, Lcom/google/android/gms/internal/zzfp;->zzAK:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zznd;->zzab(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v1, "bthick"

    iget v2, p1, Lcom/google/android/gms/internal/zzfp;->zzAL:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAM:I

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_4

    const-string v2, "btype"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAN:I

    packed-switch v1, :pswitch_data_1

    :goto_1
    if-eqz v0, :cond_5

    const-string v1, "callbuttoncolor"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/internal/zzfp;->zzAO:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "channel"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAO:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v0, p1, Lcom/google/android/gms/internal/zzfp;->zzAP:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "dcolor"

    iget v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAP:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zznd;->zzab(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/internal/zzfp;->zzAQ:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "font"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAQ:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget v0, p1, Lcom/google/android/gms/internal/zzfp;->zzAR:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "hcolor"

    iget v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAR:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zznd;->zzab(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "headersize"

    iget v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAS:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfp;->zzAT:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "q"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfp;->zzAT:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void

    :pswitch_0
    const-string v1, "none"

    goto :goto_0

    :pswitch_1
    const-string v1, "dashed"

    goto :goto_0

    :pswitch_2
    const-string v1, "dotted"

    goto :goto_0

    :pswitch_3
    const-string v1, "solid"

    goto :goto_0

    :pswitch_4
    const-string v0, "dark"

    goto :goto_1

    :pswitch_5
    const-string v0, "light"

    goto :goto_1

    :pswitch_6
    const-string v0, "medium"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzmk;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzmk;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzmk;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeg;->zzzy:Ljava/lang/String;

    const-string v3, "interstitial_mb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "reward_mb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/internal/zzmk;->zzSd:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    :goto_1
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "interstitial_pool"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "counters"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzna;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzna;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "doritos"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzna;->zzTh:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzCS:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p1, Lcom/google/android/gms/internal/zzna;->zzpR:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz v3, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzna;->zzpR:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzna;->zzpR:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "rdid"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_lat"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "idtype"

    const-string v1, "adid"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, "pii"

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzqe;->zzae(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pdid"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pdidtype"

    const-string v1, "ssaid"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzni;Lcom/google/android/gms/internal/zznm$zza;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzni;",
            "Lcom/google/android/gms/internal/zznm$zza;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const-string v0, "am"

    iget v1, p1, Lcom/google/android/gms/internal/zzni;->zzUE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cog"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzni;->zzUF:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zznd;->zzB(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "coh"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzni;->zzUG:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zznd;->zzB(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzni;->zzUH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "carrier"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzni;->zzUH:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "gl"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzni;->zzUI:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzni;->zzUJ:Z

    if-eqz v0, :cond_1

    const-string v0, "simulator"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzni;->zzUK:Z

    if-eqz v0, :cond_2

    const-string v0, "is_sidewinder"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "ma"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzni;->zzUL:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zznd;->zzB(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sp"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzni;->zzUM:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zznd;->zzB(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hl"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzni;->zzUN:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzni;->zzUO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mv"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzni;->zzUO:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "muv"

    iget v1, p1, Lcom/google/android/gms/internal/zzni;->zzUP:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/google/android/gms/internal/zzni;->zzUQ:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_4

    const-string v0, "cnt"

    iget v1, p1, Lcom/google/android/gms/internal/zzni;->zzUQ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "gnt"

    iget v1, p1, Lcom/google/android/gms/internal/zzni;->zzUR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pt"

    iget v1, p1, Lcom/google/android/gms/internal/zzni;->zzUS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rm"

    iget v1, p1, Lcom/google/android/gms/internal/zzni;->zzUT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "riv"

    iget v1, p1, Lcom/google/android/gms/internal/zzni;->zzUU:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "build"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzni;->zzUZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "is_charging"

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzni;->zzUW:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "battery_level"

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzni;->zzUV:D

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "battery"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "active_network_state"

    iget v3, p1, Lcom/google/android/gms/internal/zzni;->zzUY:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "active_network_metered"

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzni;->zzUX:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p2, :cond_5

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "predicted_latency_micros"

    iget v4, p2, Lcom/google/android/gms/internal/zznm$zza;->zzVf:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "predicted_down_throughput_bps"

    iget-wide v4, p2, Lcom/google/android/gms/internal/zznm$zza;->zzVg:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "predicted_up_throughput_bps"

    iget-wide v4, p2, Lcom/google/android/gms/internal/zznm$zza;->zzVh:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "predictions"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    const-string v2, "network"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "is_browser_custom_tabs_capable"

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzni;->zzVa:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "browser"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz p3, :cond_6

    const-string v1, "android_mem_info"

    invoke-static {p3}, Lcom/google/android/gms/internal/zznd;->zzg(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "parental_controls"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "play_store"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "device"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zzab(I)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "#%06x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzmn;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-wide/16 v6, -0x1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmn;->zzNJ:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "ad_base_url"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzNJ:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmn;->zzSq:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "ad_size"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSq:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "native"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmn;->zzzB:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmn;->zzzB:Z

    if-eqz v0, :cond_11

    const-string v0, "ad_json"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->body:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmn;->zzSs:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "debug_dialog"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSs:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmn;->zzSJ:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "debug_signals"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSJ:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSm:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    const-string v0, "interstitial_timeout"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSm:J

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/zzmn;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzpp;->zzkR()I

    move-result v2

    if-ne v0, v2, :cond_12

    const-string v0, "orientation"

    const-string v2, "portrait"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmn;->zzKF:Ljava/util/List;

    if-eqz v0, :cond_6

    const-string v0, "click_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzKF:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zznd;->zzl(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmn;->zzKG:Ljava/util/List;

    if-eqz v0, :cond_7

    const-string v0, "impression_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzKG:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zznd;->zzl(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmn;->zzSp:Ljava/util/List;

    if-eqz v0, :cond_8

    const-string v0, "manual_impression_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSp:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zznd;->zzl(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmn;->zzSv:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, "active_view"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSv:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    const-string v0, "ad_is_javascript"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSt:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmn;->zzSu:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "ad_passback_url"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSu:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    const-string v0, "mediation"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSn:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "custom_render_allowed"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSw:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "content_url_opted_out"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSx:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "content_vertical_opted_out"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSK:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "prefetch"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSy:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzmn;->zzKL:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_b

    const-string v0, "refresh_interval_milliseconds"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzmn;->zzKL:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_b
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSo:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_c

    const-string v0, "mediation_config_cache_time_milliseconds"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSo:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmn;->zzSB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "gws_query_id"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSB:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    const-string v2, "fluid"

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmn;->zzzC:Z

    if-eqz v0, :cond_13

    const-string v0, "height"

    :goto_2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "native_express"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmn;->zzzD:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmn;->zzSD:Ljava/util/List;

    if-eqz v0, :cond_e

    const-string v0, "video_start_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSD:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zznd;->zzl(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmn;->zzSE:Ljava/util/List;

    if-eqz v0, :cond_f

    const-string v0, "video_complete_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSE:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zznd;->zzl(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmn;->zzSC:Lcom/google/android/gms/internal/zzoo;

    if-eqz v0, :cond_10

    const-string v0, "rewards"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSC:Lcom/google/android/gms/internal/zzoo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzoo;->zzjP()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    const-string v0, "use_displayed_impression"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSF:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "auto_protection_configuration"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->zzSG:Lcom/google/android/gms/internal/zzmp;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "render_in_browser"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzmn;->zzKJ:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v1

    :cond_11
    const-string v0, "ad_html"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmn;->body:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_12
    iget v0, p0, Lcom/google/android/gms/internal/zzmn;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzpp;->zzkQ()I

    move-result v2

    if-ne v0, v2, :cond_5

    const-string v0, "orientation"

    const-string v2, "landscape"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    :cond_13
    const-string v0, ""

    goto :goto_2
.end method

.method private static zzc(Lcom/google/android/gms/internal/zzhc;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzhc;->zzHb:I

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string v0, "any"

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const-string v0, "portrait"

    goto :goto_1

    :pswitch_1
    const-string v0, "landscape"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static zzg(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    const-wide/16 v4, -0x1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "runtime_free"

    const-string v2, "runtime_free_memory"

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "runtime_max"

    const-string v2, "runtime_max_memory"

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "runtime_total"

    const-string v2, "runtime_total_memory"

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "web_view_count"

    const-string v2, "web_view_count"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "debug_memory_info"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Debug$MemoryInfo;

    if-eqz v0, :cond_0

    const-string v2, "debug_info_dalvik_private_dirty"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug_info_dalvik_pss"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug_info_dalvik_shared_dirty"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug_info_native_private_dirty"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug_info_native_pss"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug_info_native_shared_dirty"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug_info_other_private_dirty"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug_info_other_pss"

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug_info_other_shared_dirty"

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method static zzl(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v1
.end method
