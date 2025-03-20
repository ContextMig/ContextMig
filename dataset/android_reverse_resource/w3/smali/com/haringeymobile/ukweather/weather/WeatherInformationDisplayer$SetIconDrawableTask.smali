.class Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;
.super Landroid/os/AsyncTask;
.source "WeatherInformationDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetIconDrawableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x401c155b81a755e6L    # -0.622392889757353

    const-string v2, "com/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask"

    const/16 v3, 0x1c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;->$jacocoInit()[Z

    move-result-object v0

    .line 234
    iput-object p1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 235
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 236
    aput-boolean v2, v0, v2

    return-void
.end method

.method synthetic constructor <init>(Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;Landroid/widget/ImageView;Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;->$jacocoInit()[Z

    move-result-object v0

    .line 231
    invoke-direct {p0, p1, p2}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;-><init>(Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;Landroid/widget/ImageView;)V

    const/16 v1, 0x1b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;->$jacocoInit()[Z

    move-result-object v2

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://openweathermap.org/img/w/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v2, v3

    .line 267
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xb

    const/4 v4, 0x1

    aput-boolean v4, v2, v1

    .line 268
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const/16 v3, 0xc

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 269
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v3, 0xd

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 270
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    const/16 v3, 0xe

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 271
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 279
    .local v0, "input":Ljava/io/InputStream;
    const/16 v1, 0x13

    aput-boolean v5, v2, v1

    .end local v0    # "input":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 272
    :catch_0
    move-exception v1

    const/16 v1, 0xf

    aput-boolean v5, v2, v1

    .line 273
    const-string v1, "MalformedURLException during SetIconDrawableTask"

    invoke-static {v1}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->log(Ljava/lang/String;)V

    .line 274
    const/16 v1, 0x10

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 275
    :catch_1
    move-exception v1

    const/16 v1, 0x11

    aput-boolean v5, v2, v1

    .line 276
    const-string v1, "IOException during SetIconDrawableTask"

    invoke-static {v1}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->log(Ljava/lang/String;)V

    .line 277
    const/16 v1, 0x12

    aput-boolean v5, v2, v1

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;->$jacocoInit()[Z

    move-result-object v3

    .line 240
    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;

    invoke-static {v2}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->access$100(Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    .line 241
    const/4 v2, 0x0

    const/4 v4, 0x2

    aput-boolean v6, v3, v4

    .line 253
    .local v1, "iconInputStream":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 244
    .end local v1    # "iconInputStream":Ljava/io/InputStream;
    :cond_0
    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v4, 0x3

    aput-boolean v6, v3, v4

    .line 245
    invoke-direct {p0, v2}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 246
    .restart local v1    # "iconInputStream":Ljava/io/InputStream;
    if-nez v1, :cond_1

    const/4 v2, 0x4

    aput-boolean v6, v3, v2

    .line 248
    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;

    invoke-static {v2}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->access$200(Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;)Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f02008b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x5

    aput-boolean v6, v3, v4

    goto :goto_0

    .line 250
    :cond_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x6

    aput-boolean v6, v3, v5

    .line 251
    invoke-static {v4}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->trimBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "iconBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x7

    aput-boolean v6, v3, v4

    .line 252
    iget-object v4, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;

    invoke-static {v4, v2, v0}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->access$300(Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/16 v2, 0x8

    aput-boolean v6, v3, v2

    .line 253
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;->this$0:Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;

    invoke-static {v4}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;->access$200(Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/16 v4, 0x9

    aput-boolean v6, v3, v4

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;->$jacocoInit()[Z

    move-result-object v0

    .line 231
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x1a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;->$jacocoInit()[Z

    move-result-object v1

    .line 284
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/16 v2, 0x14

    aput-boolean v3, v1, v2

    .line 285
    iget-object v2, p0, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 286
    .local v0, "imageView":Landroid/widget/ImageView;
    if-nez v0, :cond_0

    const/16 v2, 0x15

    aput-boolean v3, v1, v2

    .line 289
    :goto_0
    const/16 v2, 0x18

    aput-boolean v3, v1, v2

    return-void

    .line 286
    :cond_0
    const/16 v2, 0x16

    aput-boolean v3, v1, v2

    .line 287
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x17

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;->$jacocoInit()[Z

    move-result-object v0

    .line 231
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/haringeymobile/ukweather/weather/WeatherInformationDisplayer$SetIconDrawableTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x19

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
