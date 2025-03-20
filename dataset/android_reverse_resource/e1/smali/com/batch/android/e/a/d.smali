.class public Lcom/batch/android/e/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/e/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/e/a/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "@media (ios|android|\\*) and \\((max|min)-(width|height):\\s*(\\d*)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/batch/android/e/a/d;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/batch/android/e/a/d;->a:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/batch/android/e/a/d;->b:Ljava/util/List;

    .line 35
    return-void
.end method

.method private a(Lcom/batch/android/e/a/b;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1    # Lcom/batch/android/e/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/e/a/b;",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/e/a/h;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/e/a/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    if-nez p2, :cond_0

    move-object v0, v1

    .line 230
    :goto_0
    return-object v0

    .line 208
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/a/h;

    .line 212
    const-string v3, "*"

    iget-object v4, v0, Lcom/batch/android/e/a/h;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 214
    iget-object v0, v0, Lcom/batch/android/e/a/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/a/c;

    .line 216
    instance-of v4, v0, Lcom/batch/android/e/a/i;

    if-eqz v4, :cond_2

    .line 218
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 224
    :cond_3
    iget-object v3, v0, Lcom/batch/android/e/a/h;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/batch/android/e/a/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    iget-object v0, v0, Lcom/batch/android/e/a/h;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 230
    goto :goto_0
.end method

.method private a(Landroid/graphics/Point;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 292
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v2

    .line 297
    :cond_1
    const-string v0, "ios"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    const-string v0, "height"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    iget v0, p1, Landroid/graphics/Point;->y:I

    .line 316
    :goto_1
    const-string v3, "max"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 318
    if-gt v0, p5, :cond_3

    move v0, v1

    :goto_2
    move v2, v0

    goto :goto_0

    .line 311
    :cond_2
    iget v0, p1, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_3
    move v0, v2

    .line 318
    goto :goto_2

    .line 322
    :cond_4
    if-lt v0, p5, :cond_5

    :goto_3
    move v2, v1

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Point;)Z
    .locals 8

    .prologue
    const/16 v2, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    .line 287
    :goto_0
    return v0

    .line 240
    :cond_0
    if-eqz p2, :cond_1

    .line 242
    sget-object v0, Lcom/batch/android/e/a/d;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 248
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 249
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 250
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object v0, p0

    move-object v1, p2

    .line 251
    invoke-direct/range {v0 .. v5}, Lcom/batch/android/e/a/d;->a(Landroid/graphics/Point;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 255
    const-string v1, "Error while parsing a media query size rule"

    invoke-static {v7, v1, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;Ljava/lang/Throwable;)V

    move v0, v6

    .line 256
    goto :goto_0

    .line 261
    :cond_1
    const-string v0, "@android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    move v0, v7

    .line 265
    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 271
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 274
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 275
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-lt v1, v0, :cond_3

    move v0, v7

    .line 277
    goto :goto_0

    .line 280
    :catch_1
    move-exception v0

    :cond_3
    move v0, v6

    .line 287
    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/batch/android/e/a/b;Landroid/graphics/Point;)Ljava/util/Map;
    .locals 1
    .param p1    # Lcom/batch/android/e/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/e/a/b;",
            "Landroid/graphics/Point;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/batch/android/e/a/d;->b(Lcom/batch/android/e/a/b;Landroid/graphics/Point;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batch/android/e/a/d;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/Map;
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/e/a/c;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x2

    const/4 v7, 0x1

    .line 46
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    :goto_0
    return-object v0

    .line 53
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 54
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/a/c;

    .line 58
    instance-of v4, v0, Lcom/batch/android/e/a/i;

    if-eqz v4, :cond_2

    .line 60
    iget-object v4, v0, Lcom/batch/android/e/a/c;->a:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/batch/android/e/a/c;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_1

    .line 62
    iget-object v4, v0, Lcom/batch/android/e/a/c;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/batch/android/e/a/c;->b:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    .line 174
    const-string v1, "CSS"

    const-string v2, "Unexpected error while extracting flat rules"

    invoke-static {v1, v2, v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    throw v0

    .line 67
    :cond_2
    :try_start_1
    iget-object v4, v0, Lcom/batch/android/e/a/c;->a:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 69
    iget-object v4, v0, Lcom/batch/android/e/a/c;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/batch/android/e/a/c;->b:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 75
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 76
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 77
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    const-string v5, "var("

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 82
    const/4 v5, 0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 88
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 91
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 95
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 101
    :cond_6
    const-string v0, "padding"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 104
    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 106
    array-length v0, v1

    if-ne v0, v7, :cond_12

    .line 108
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, v1, v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aget-object v4, v1, v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aget-object v4, v1, v4

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aget-object v1, v1, v4

    aput-object v1, v0, v3

    .line 111
    :goto_3
    array-length v1, v0

    if-ne v1, v8, :cond_a

    .line 114
    const-string v1, "padding-top"

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 116
    const-string v1, "padding-top"

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_7
    const-string v1, "padding-right"

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 120
    const-string v1, "padding-right"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_8
    const-string v1, "padding-bottom"

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 124
    const-string v1, "padding-bottom"

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_9
    const-string v1, "padding-left"

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 128
    const-string v1, "padding-left"

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_a
    const-string v0, "padding"

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_b
    const-string v0, "margin"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 139
    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 141
    array-length v0, v1

    if-ne v0, v7, :cond_11

    .line 143
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, v1, v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aget-object v4, v1, v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aget-object v4, v1, v4

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aget-object v1, v1, v4

    aput-object v1, v0, v3

    .line 146
    :goto_4
    array-length v1, v0

    if-ne v1, v8, :cond_f

    .line 149
    const-string v1, "margin-top"

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 151
    const-string v1, "margin-top"

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_c
    const-string v1, "margin-right"

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 155
    const-string v1, "margin-right"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_d
    const-string v1, "margin-bottom"

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 159
    const-string v1, "margin-bottom"

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_e
    const-string v1, "margin-left"

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 163
    const-string v1, "margin-left"

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_f
    const-string v0, "margin"

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_10
    move-object v0, v2

    .line 170
    goto/16 :goto_0

    :cond_11
    move-object v0, v1

    goto :goto_4

    :cond_12
    move-object v0, v1

    goto/16 :goto_3
.end method

.method public b(Lcom/batch/android/e/a/b;Landroid/graphics/Point;)Ljava/util/List;
    .locals 4
    .param p1    # Lcom/batch/android/e/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/e/a/b;",
            "Landroid/graphics/Point;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/e/a/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    iget-object v0, p0, Lcom/batch/android/e/a/d;->a:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/batch/android/e/a/d;->a(Lcom/batch/android/e/a/b;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    iget-object v0, p0, Lcom/batch/android/e/a/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/a/f;

    .line 188
    iget-object v3, v0, Lcom/batch/android/e/a/f;->a:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/batch/android/e/a/d;->a(Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    iget-object v0, v0, Lcom/batch/android/e/a/f;->b:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/batch/android/e/a/d;->a(Lcom/batch/android/e/a/b;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 194
    :cond_1
    return-object v1
.end method
