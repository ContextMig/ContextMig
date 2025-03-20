.class public Lcom/batch/android/e/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/a/e;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/batch/android/e/a/a/a;->a()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/batch/android/e/a/a/a;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    const-string v1, "generic1-h-cta"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "generic1_h-cta"

    aput-object v3, v2, v4

    const-string v3, "generic1_base"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "generic1-v-cta"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "generic1_v-cta"

    aput-object v3, v2, v4

    const-string v3, "generic1_base"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 22
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 23
    sget-object v0, Lcom/batch/android/e/a/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 24
    if-eqz v0, :cond_3

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    array-length v4, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 27
    invoke-virtual {p0, v5}, Lcom/batch/android/e/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 28
    if-eqz v5, :cond_0

    .line 29
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    .line 36
    goto :goto_1

    .line 40
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_4
    :goto_2
    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 48
    goto :goto_1

    .line 40
    :sswitch_0
    const-string v4, "generic1_h-cta"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    goto :goto_2

    :sswitch_1
    const-string v2, "generic1_v-cta"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :sswitch_2
    const-string v2, "generic1_base"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x2

    goto :goto_2

    .line 42
    :pswitch_0
    const-string v0, "*{--separator-bc:#DCA6C6;--separator-bw:1;--cta-h-m:0;--ios-padding-hack:-1}@android{#ctas{border-color:var(--separator-bc);border-width:var(--separator-bw);margin:-1}}@ios{.ctas-h-sep{width:0}.btn{compression-res-h:1000;content-hug-h:250}#ctas{height:50;padding-left:var(--ios-padding-hack);padding-right:var(--ios-padding-hack);padding-bottom:var(--ios-padding-hack)}#ctas-inner{border-color:var(--separator-bc);border-width:var(--separator-bw)}}.btn{height:50;margin:var(--cta-h-m)}"

    goto :goto_1

    .line 44
    :pswitch_1
    const-string v0, "*{--cta-v-m:10;--cta-v-p:15}.btn{margin:var(--cta-v-m);padding:var(--cta-v-p)}"

    goto :goto_1

    .line 46
    :pswitch_2
    const-string v0, "@android{#body{flex-grow:0}}@ios{#close{margin-top:22}#root{statusbar:var(--mode)}}*{--mode:light;--general-bg:#923D6F;--close-bg:#FFFFFF;--close-c:#8D426E;--image-bs:fill;--header-fs:13;--header-fw:bold;--header-m:0 0 10 0;--header-c:#C784AC;--title-fs:24;--title-fw:bold;--title-m:0 10 10 10;--title-c:#FFFFFF;--text-fs:15;--text-fw:normal;--text-m:0 10 0 10;--text-c:#E5C7D9;--cta-c-p:0;--cta1-m:0;--cta1-br:0;--cta1-c:#FFFFFF;--cta1-bg:transparent;--cta1-fw:normal;--cta2-m:0;--cta2-br:0;--cta2-c:#C784AC;--cta2-bg:transparent;--cta2-fw:normal}#placeholder{loader:var(--mode)}.text{margin-left:30;margin-right:30}#root{background-color:var(--general-bg);statusbar-bg:translucent}#image{scale:var(--image-bs)}.btn{elevation:0;background-color:transparent;color:#FFFFFF;font-weight:var(--cta-fw)}#ctas{padding:var(--cta-p)}#close{background-color:var(--close-bg);margin-top:40;margin-right:20;color:var(--close-c);glyph-padding:20}#body{font-size:var(--text-fs);font-weight:var(--text-fw);margin:var(--text-m);color:var(--text-c);line-height:1.2}#h1{font-size:var(--header-fs);font-weight:var(--header-fw);margin:var(--header-m);color:var(--header-c)}#h2{font-size:var(--title-fs);font-weight:var(--title-fw);margin:var(--title-m);color:var(--title-c);line-height:1.1}#cta1{margin:var(--cta1-m);border-radius:var(--cta1-br);color:var(--cta1-c);background-color:var(--cta1-bg);font-weight:var(--cta1-fw)}#cta2{margin:var(--cta2-m);border-radius:var(--cta2-br);color:var(--cta2-c);background-color:var(--cta2-bg);font-weight:var(--cta2-fw)}"

    goto :goto_1

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6cab3c1a -> :sswitch_0
        -0x6be5f30c -> :sswitch_1
        -0x350fbd4a -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
