.class public final Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;
.super Ljava/lang/Object;
.source "ManualAddSearchEngineSettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManualAddSearchEngineSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManualAddSearchEngineSettingsFragment.kt\norg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion\n*L\n1#1,223:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLOGTAG$p(Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;->getLOGTAG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getLOGTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->access$getLOGTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getSEARCH_QUERY_VALIDATION_TIMEOUT_MILLIS()I
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->access$getSEARCH_QUERY_VALIDATION_TIMEOUT_MILLIS$cp()I

    move-result v0

    return v0
.end method

.method private final getVALID_RESPONSE_CODE_UPPER_BOUND()I
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment;->access$getVALID_RESPONSE_CODE_UPPER_BOUND$cp()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final isValidSearchQueryURL(Ljava/lang/String;)Z
    .locals 12
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v8, "query"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    const-string v8, "testSearchEngineValidation"

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "encodedTestQuery":Ljava/lang/String;
    invoke-static {p1}, Lorg/mozilla/focus/utils/UrlUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "normalizedHttpsSearchURLStr":Ljava/lang/String;
    const-string v8, "normalizedHttpsSearchURLStr"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    .end local v5    # "normalizedHttpsSearchURLStr":Ljava/lang/String;
    const-string v8, "%s"

    new-instance v11, Lkotlin/text/Regex;

    invoke-direct {v11, v8}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v8, "encodedTestQuery"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v5, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "searchURLStr":Ljava/lang/String;
    nop

    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .local v6, "searchURL":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v8, Lkotlin/TypeCastException;

    const-string v9, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {v8, v9}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 148
    .end local v6    # "searchURL":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 150
    .local v3, "e":Ljava/net/MalformedURLException;
    check-cast p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;

    .end local p0    # "this":Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;
    invoke-direct {p0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;->getLOGTAG()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Failure to get response code from server: returning invalid search query"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v10

    .line 159
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :goto_0
    return v8

    .line 154
    .restart local v6    # "searchURL":Ljava/net/URL;
    .restart local p0    # "this":Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;
    :cond_0
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 155
    .local v2, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    move-object v8, p0

    .line 156
    check-cast v8, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;

    invoke-direct {v8}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;->getSEARCH_QUERY_VALIDATION_TIMEOUT_MILLIS()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    move-object v8, p0

    .line 157
    check-cast v8, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;

    invoke-direct {v8}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;->getSEARCH_QUERY_VALIDATION_TIMEOUT_MILLIS()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 159
    nop

    .line 160
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    move-object v0, p0

    check-cast v0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;

    move-object v8, v0

    invoke-direct {v8}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;->getVALID_RESPONSE_CODE_UPPER_BOUND()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-ge v11, v8, :cond_1

    move v8, v9

    .line 165
    :goto_1
    nop

    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 167
    .end local p0    # "this":Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;
    :goto_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .restart local p0    # "this":Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;
    :cond_1
    move v8, v10

    .line 160
    goto :goto_1

    .line 165
    :catch_1
    move-exception v1

    .line 166
    .local v1, "_":Ljava/io/IOException;
    check-cast p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;

    .end local p0    # "this":Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;
    invoke-direct {p0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;->getLOGTAG()Ljava/lang/String;

    move-result-object v9

    const-string v10, "connection.inputStream failed to close"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 161
    .end local v1    # "_":Ljava/io/IOException;
    .restart local p0    # "this":Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;
    :catch_2
    move-exception v3

    .line 162
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    move-object v0, p0

    check-cast v0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;

    move-object v8, v0

    invoke-direct {v8}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;->getLOGTAG()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Failure to get response code from server: returning invalid search query"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    nop

    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 167
    .end local p0    # "this":Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;
    :goto_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v8, v10

    goto :goto_0

    .line 165
    .restart local p0    # "this":Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;
    :catch_3
    move-exception v1

    .line 166
    .restart local v1    # "_":Ljava/io/IOException;
    check-cast p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;

    .end local p0    # "this":Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;
    invoke-direct {p0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;->getLOGTAG()Ljava/lang/String;

    move-result-object v8

    const-string v9, "connection.inputStream failed to close"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 167
    .end local v1    # "_":Ljava/io/IOException;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;
    :catchall_0
    move-exception v8

    .line 165
    nop

    :try_start_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 167
    .end local p0    # "this":Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;
    :goto_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v8

    .line 165
    .restart local p0    # "this":Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;
    :catch_4
    move-exception v1

    .line 166
    .restart local v1    # "_":Ljava/io/IOException;
    check-cast p0, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;

    .end local p0    # "this":Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;
    invoke-direct {p0}, Lorg/mozilla/focus/settings/ManualAddSearchEngineSettingsFragment$Companion;->getLOGTAG()Ljava/lang/String;

    move-result-object v9

    const-string v10, "connection.inputStream failed to close"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
