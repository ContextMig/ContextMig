.class public Lcom/fsck/k9/activity/misc/ContactPictureLoader;
.super Ljava/lang/Object;
.source "ContactPictureLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader;,
        Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;,
        Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideBitmapDecoder;
    }
.end annotation


# static fields
.field private static final CONTACT_DUMMY_COLORS_ARGB:[I

.field private static final EXTRACT_LETTER_PATTERN:Ljava/util/regex/Pattern;

.field private static final FALLBACK_CONTACT_LETTER:Ljava/lang/String; = "?"

.field private static final PICTURE_SIZE:I = 0x28


# instance fields
.field private mContactsHelper:Lcom/fsck/k9/helper/Contacts;

.field private mDefaultBackgroundColor:I

.field private mPictureSizeInPx:I

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "\\p{L}\\p{M}*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->EXTRACT_LETTER_PATTERN:Ljava/util/regex/Pattern;

    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->CONTACT_DUMMY_COLORS_ARGB:[I

    return-void

    :array_0
    .array-data 4
        -0xcc4a1b
        -0x559934
        -0x663400
        -0x44cd
        -0xbbbc
        -0xff6634
        -0x66cc34
        -0x996700
        -0x7800
        -0x340000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultBackgroundColor"    # I

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    .local v0, "appContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->mResources:Landroid/content/res/Resources;

    .line 107
    invoke-static {v0}, Lcom/fsck/k9/helper/Contacts;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/Contacts;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->mContactsHelper:Lcom/fsck/k9/helper/Contacts;

    .line 109
    iget-object v2, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 110
    .local v1, "scale":F
    const/high16 v2, 0x42200000    # 40.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->mPictureSizeInPx:I

    .line 112
    iput p2, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->mDefaultBackgroundColor:I

    .line 114
    return-void
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/misc/ContactPictureLoader;Lcom/fsck/k9/mail/Address;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/misc/ContactPictureLoader;
    .param p1, "x1"    # Lcom/fsck/k9/mail/Address;
    .param p2, "x2"    # Landroid/widget/ImageView;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->loadFallbackPicture(Lcom/fsck/k9/mail/Address;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/misc/ContactPictureLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/misc/ContactPictureLoader;

    .prologue
    .line 42
    iget v0, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->mPictureSizeInPx:I

    return v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/activity/misc/ContactPictureLoader;Landroid/graphics/Bitmap;Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/misc/ContactPictureLoader;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->drawTextAndBgColorOnBitmap(Landroid/graphics/Bitmap;Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private calcUnknownContactColor(Lcom/fsck/k9/mail/Address;)I
    .locals 4
    .param p1, "address"    # Lcom/fsck/k9/mail/Address;

    .prologue
    .line 176
    iget v2, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->mDefaultBackgroundColor:I

    if-eqz v2, :cond_0

    .line 177
    iget v2, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->mDefaultBackgroundColor:I

    .line 182
    :goto_0
    return v2

    .line 180
    :cond_0
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Address;->hashCode()I

    move-result v1

    .line 181
    .local v1, "val":I
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    sget-object v3, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->CONTACT_DUMMY_COLORS_ARGB:[I

    array-length v3, v3

    rem-int v0, v2, v3

    .line 182
    .local v0, "colorIndex":I
    sget-object v2, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->CONTACT_DUMMY_COLORS_ARGB:[I

    aget v2, v2, v0

    goto :goto_0
.end method

.method protected static calcUnknownContactLetter(Lcom/fsck/k9/mail/Address;)Ljava/lang/String;
    .locals 6
    .param p0, "address"    # Lcom/fsck/k9/mail/Address;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "letter":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "personal":Ljava/lang/String;
    if-eqz v2, :cond_2

    move-object v3, v2

    .line 86
    .local v3, "str":Ljava/lang/String;
    :goto_0
    sget-object v4, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->EXTRACT_LETTER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 87
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "?"

    .end local v0    # "letter":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 85
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "str":Ljava/lang/String;
    .restart local v0    # "letter":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private drawTextAndBgColorOnBitmap(Landroid/graphics/Bitmap;Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "params"    # Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0xff

    const/high16 v9, 0x40000000    # 2.0f

    .line 186
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 188
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v6, p2, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;->address:Lcom/fsck/k9/mail/Address;

    invoke-direct {p0, v6}, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->calcUnknownContactColor(Lcom/fsck/k9/mail/Address;)I

    move-result v4

    .line 189
    .local v4, "rgb":I
    invoke-virtual {p1, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 191
    iget-object v6, p2, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;->address:Lcom/fsck/k9/mail/Address;

    invoke-static {v6}, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->calcUnknownContactLetter(Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "letter":Ljava/lang/String;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 194
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 197
    iget v6, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->mPictureSizeInPx:I

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 198
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 199
    .local v3, "rect":Landroid/graphics/Rect;
    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v8, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 200
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 201
    .local v5, "width":F
    iget v6, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->mPictureSizeInPx:I

    int-to-float v6, v6

    div-float/2addr v6, v9

    div-float v7, v5, v9

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->mPictureSizeInPx:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    .line 203
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 201
    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 205
    return-object p1
.end method

.method private loadContactPicture(Landroid/net/Uri;Lcom/fsck/k9/mail/Address;Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "photoUri"    # Landroid/net/Uri;
    .param p2, "address"    # Lcom/fsck/k9/mail/Address;
    .param p3, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    new-instance v0, Lcom/fsck/k9/activity/misc/ContactPictureLoader$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/fsck/k9/activity/misc/ContactPictureLoader$1;-><init>(Lcom/fsck/k9/activity/misc/ContactPictureLoader;Lcom/fsck/k9/mail/Address;Landroid/widget/ImageView;)V

    .line 162
    .local v0, "noPhotoListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<Landroid/net/Uri;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    invoke-virtual {p3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 163
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 164
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 165
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->mPictureSizeInPx:I

    iget v3, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->mPictureSizeInPx:I

    .line 168
    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 169
    invoke-virtual {v1, p3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 173
    .end local v0    # "noPhotoListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<Landroid/net/Uri;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->loadFallbackPicture(Lcom/fsck/k9/mail/Address;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method private loadFallbackPicture(Lcom/fsck/k9/mail/Address;Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "address"    # Lcom/fsck/k9/mail/Address;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 126
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    new-instance v2, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideModelLoader;-><init>(Lcom/fsck/k9/activity/misc/ContactPictureLoader;Lcom/fsck/k9/activity/misc/ContactPictureLoader$1;)V

    const-class v3, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;

    .line 129
    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/RequestManager;->using(Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    move-result-object v1

    const-class v2, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;

    .line 130
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->from(Ljava/lang/Class;)Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;

    move-result-object v1

    const-class v2, Landroid/graphics/Bitmap;

    .line 131
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->as(Ljava/lang/Class;)Lcom/bumptech/glide/GenericTranscodeRequest;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;

    invoke-direct {v2, v0}, Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    .line 132
    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/GenericTranscodeRequest;->transcode(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideBitmapDecoder;

    invoke-direct {v2, p0, v0}, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideBitmapDecoder;-><init>(Lcom/fsck/k9/activity/misc/ContactPictureLoader;Landroid/content/Context;)V

    .line 133
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/GenericRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>(Landroid/graphics/Bitmap$CompressFormat;I)V

    .line 134
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/GenericRequestBuilder;->encoder(Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    invoke-direct {v3, v0}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 135
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/GenericRequestBuilder;->cacheDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 136
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/activity/misc/ContactPictureLoader$FallbackGlideParams;-><init>(Lcom/fsck/k9/activity/misc/ContactPictureLoader;Lcom/fsck/k9/mail/Address;)V

    .line 137
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcom/bumptech/glide/GenericRequestBuilder;->dontAnimate()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->mPictureSizeInPx:I

    iget v3, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->mPictureSizeInPx:I

    .line 140
    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/GenericRequestBuilder;->override(II)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    .line 141
    invoke-virtual {v1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 142
    return-void
.end method


# virtual methods
.method public loadContactPicture(Lcom/fsck/k9/mail/Address;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "address"    # Lcom/fsck/k9/mail/Address;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->mContactsHelper:Lcom/fsck/k9/helper/Contacts;

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/helper/Contacts;->getPhotoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 118
    .local v0, "photoUri":Landroid/net/Uri;
    invoke-direct {p0, v0, p1, p2}, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->loadContactPicture(Landroid/net/Uri;Lcom/fsck/k9/mail/Address;Landroid/widget/ImageView;)V

    .line 119
    return-void
.end method

.method public loadContactPicture(Lcom/fsck/k9/view/RecipientSelectView$Recipient;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "recipient"    # Lcom/fsck/k9/view/RecipientSelectView$Recipient;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 122
    iget-object v0, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->photoThumbnailUri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    invoke-direct {p0, v0, v1, p2}, Lcom/fsck/k9/activity/misc/ContactPictureLoader;->loadContactPicture(Landroid/net/Uri;Lcom/fsck/k9/mail/Address;Landroid/widget/ImageView;)V

    .line 123
    return-void
.end method
