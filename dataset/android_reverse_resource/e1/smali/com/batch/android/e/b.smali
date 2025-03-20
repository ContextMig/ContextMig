.class public Lcom/batch/android/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/e/c/a;)Lcom/batch/android/e/c/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/e/c;,
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 110
    const-string v0, "title"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/e/c/a;->a:Ljava/lang/String;

    .line 111
    const-string v0, "cancelLabel"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/e/c/a;->b:Ljava/lang/String;

    .line 113
    iget-object v0, p1, Lcom/batch/android/e/c/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/batch/android/e/c/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lcom/batch/android/e/c;

    const-string v1, "Alert payload requires at least a title or a body"

    invoke-direct {v0, v1}, Lcom/batch/android/e/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    const-string v0, "cta"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_1

    .line 121
    invoke-static {v0}, Lcom/batch/android/e/b;->c(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/e/c/b;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_1

    .line 125
    iput-object v0, p1, Lcom/batch/android/e/c/a;->c:Lcom/batch/android/e/c/b;

    .line 129
    :cond_1
    return-object p1
.end method

.method public static a(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/e/c/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/e/c;
        }
    .end annotation

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 31
    new-instance v0, Lcom/batch/android/e/c;

    const-string v1, "The payload cannot be null"

    invoke-direct {v0, v1}, Lcom/batch/android/e/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/batch/android/e/b;->b(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/e/c/c;
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    instance-of v1, v0, Lcom/batch/android/e/c/a;

    if-eqz v1, :cond_2

    .line 49
    :try_start_1
    check-cast v0, Lcom/batch/android/e/c/a;

    invoke-static {p0, v0}, Lcom/batch/android/e/b;->a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/e/c/a;)Lcom/batch/android/e/c/a;
    :try_end_1
    .catch Lcom/batch/android/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 68
    :cond_1
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 42
    new-instance v1, Lcom/batch/android/e/c;

    const-string v2, "Error while decoding the JSON payload (code 2)"

    invoke-direct {v1, v2, v0}, Lcom/batch/android/e/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 51
    :catch_1
    move-exception v0

    .line 53
    new-instance v1, Lcom/batch/android/e/c;

    const-string v2, "Error while decoding the JSON payload (code 3)"

    invoke-direct {v1, v2, v0}, Lcom/batch/android/e/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 56
    :cond_2
    instance-of v1, v0, Lcom/batch/android/e/c/d;

    if-eqz v1, :cond_1

    .line 60
    :try_start_2
    check-cast v0, Lcom/batch/android/e/c/d;

    invoke-static {p0, v0}, Lcom/batch/android/e/b;->a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/e/c/d;)Lcom/batch/android/e/c/d;
    :try_end_2
    .catch Lcom/batch/android/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    .line 62
    :catch_2
    move-exception v0

    .line 64
    new-instance v1, Lcom/batch/android/e/c;

    const-string v2, "Error while decoding the JSON payload (code 4)"

    invoke-direct {v1, v2, v0}, Lcom/batch/android/e/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Lcom/batch/android/json/JSONObject;Lcom/batch/android/e/c/d;)Lcom/batch/android/e/c/d;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/e/c;,
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 134
    const-string v0, "h1"

    invoke-virtual {p0, v0, v4}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/e/c/d;->b:Ljava/lang/String;

    .line 135
    const-string v0, "h2"

    invoke-virtual {p0, v0, v4}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/e/c/d;->c:Ljava/lang/String;

    .line 136
    const-string v0, "h3"

    invoke-virtual {p0, v0, v4}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/e/c/d;->h:Ljava/lang/String;

    .line 137
    const-string v0, "hero"

    invoke-virtual {p0, v0, v4}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/e/c/d;->j:Ljava/lang/String;

    .line 138
    const-string v0, "video"

    invoke-virtual {p0, v0, v4}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/e/c/d;->k:Ljava/lang/String;

    .line 139
    const-string v0, "hdesc"

    invoke-virtual {p0, v0, v4}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/e/c/d;->l:Ljava/lang/String;

    .line 140
    const-string v0, "style"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/e/c/d;->a:Ljava/lang/String;

    .line 141
    const-string v0, "attach_cta_bottom"

    invoke-virtual {p0, v0, v4}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/e/c/d;->n:Ljava/lang/Boolean;

    .line 142
    const-string v0, "stack_cta_h"

    invoke-virtual {p0, v0, v4}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/e/c/d;->o:Ljava/lang/Boolean;

    .line 143
    const-string v0, "stretch_cta_h"

    invoke-virtual {p0, v0, v4}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/e/c/d;->p:Ljava/lang/Boolean;

    .line 144
    const-string v0, "flip_hero_v"

    invoke-virtual {p0, v0, v4}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/e/c/d;->q:Ljava/lang/Boolean;

    .line 145
    const-string v0, "flip_hero_h"

    invoke-virtual {p0, v0, v4}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/e/c/d;->r:Ljava/lang/Boolean;

    .line 146
    const-string v0, "close"

    invoke-virtual {p0, v0, v4}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/e/c/d;->m:Ljava/lang/Boolean;

    .line 147
    const-string v0, "hero_split_ratio"

    invoke-virtual {p0, v0, v4}, Lcom/batch/android/json/JSONObject;->reallyOptDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p1, Lcom/batch/android/e/c/d;->s:Ljava/lang/Double;

    .line 149
    iget-object v0, p1, Lcom/batch/android/e/c/d;->s:Ljava/lang/Double;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/batch/android/e/c/d;->s:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/batch/android/e/c/d;->s:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 151
    :cond_0
    const-string v0, "PayloadParser"

    const-string v1, "Hero split ratio is <= 0 or >= 1. Ignoring."

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iput-object v4, p1, Lcom/batch/android/e/c/d;->s:Ljava/lang/Double;

    .line 155
    :cond_1
    const-string v0, "cta"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/batch/android/json/JSONArray;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_3

    .line 158
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/batch/android/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 160
    invoke-virtual {v1, v0}, Lcom/batch/android/json/JSONArray;->optJSONObject(I)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    .line 161
    if-nez v2, :cond_2

    .line 158
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_2
    iget-object v3, p1, Lcom/batch/android/e/c/d;->i:Ljava/util/List;

    invoke-static {v2}, Lcom/batch/android/e/b;->c(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/e/c/b;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    :cond_3
    :try_start_0
    new-instance v0, Lcom/batch/android/e/a/g;

    new-instance v1, Lcom/batch/android/e/a/a/a;

    invoke-direct {v1}, Lcom/batch/android/e/a/a/a;-><init>()V

    iget-object v2, p1, Lcom/batch/android/e/c/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/batch/android/e/a/g;-><init>(Lcom/batch/android/e/a/e;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/batch/android/e/a/g;->a()Lcom/batch/android/e/a/d;

    move-result-object v0

    if-nez v0, :cond_4

    .line 174
    new-instance v0, Lcom/batch/android/e/c;

    const-string v1, "Style parsing exception (-23)"

    invoke-direct {v0, v1}, Lcom/batch/android/e/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/batch/android/e/a/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :catch_0
    move-exception v0

    .line 179
    const/4 v1, 0x1

    const-string v2, "Parsing exception"

    invoke-static {v1, v2, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    new-instance v0, Lcom/batch/android/e/c;

    const-string v1, "Style parsing exception (-24)"

    invoke-direct {v0, v1}, Lcom/batch/android/e/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_4
    return-object p1
.end method

.method public static b(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/e/c/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/e/c;,
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 73
    const-string v0, "kind"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v1, "alert"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v0, Lcom/batch/android/e/c/a;

    invoke-direct {v0}, Lcom/batch/android/e/c/a;-><init>()V

    .line 90
    :goto_0
    const-string v1, "minapi"

    invoke-virtual {p0, v1, v3}, Lcom/batch/android/json/JSONObject;->reallyOptInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    .line 94
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 96
    const/4 v0, 0x0

    const-string v1, "Messaging - This SDK is too old to display this message. Please update it."

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 97
    new-instance v0, Lcom/batch/android/e/c;

    const-string v1, "SDK too old"

    invoke-direct {v0, v1}, Lcom/batch/android/e/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    const-string v1, "universal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    new-instance v0, Lcom/batch/android/e/c/d;

    invoke-direct {v0}, Lcom/batch/android/e/c/d;-><init>()V

    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Lcom/batch/android/e/c;

    const-string v1, "Unknown message kind"

    invoke-direct {v0, v1}, Lcom/batch/android/e/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_2
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/batch/android/e/c/c;->d:Ljava/lang/String;

    .line 101
    const-string v1, "did"

    invoke-virtual {p0, v1, v3}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/batch/android/e/c/c;->e:Ljava/lang/String;

    .line 102
    const-string v1, "body"

    invoke-virtual {p0, v1, v3}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/batch/android/e/c/c;->f:Ljava/lang/String;

    .line 103
    const-string v1, "ed"

    invoke-virtual {p0, v1}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/batch/android/e/c/c;->g:Lcom/batch/android/json/JSONObject;

    .line 105
    return-object v0
.end method

.method private static c(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/e/c/b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/e/c;,
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 188
    const-string v0, "l"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    const-string v0, "a"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    const-string v0, "args"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v0

    .line 192
    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 197
    :cond_0
    new-instance v3, Lcom/batch/android/e/c/b;

    invoke-direct {v3, v1, v2, v0}, Lcom/batch/android/e/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/json/JSONObject;)V

    return-object v3
.end method
