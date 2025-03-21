.class public Lcom/google/android/apps/dashclock/api/ExtensionData;
.super Ljava/lang/Object;
.source "ExtensionData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/dashclock/api/ExtensionData;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_CLICK_INTENT:Ljava/lang/String; = "click_intent"

.field private static final KEY_CONTENT_DESCRIPTION:Ljava/lang/String; = "content_description"

.field private static final KEY_EXPANDED_BODY:Ljava/lang/String; = "body"

.field private static final KEY_EXPANDED_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_ICON:Ljava/lang/String; = "icon"

.field private static final KEY_ICON_URI:Ljava/lang/String; = "icon_uri"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final KEY_VISIBLE:Ljava/lang/String; = "visible"

.field public static final MAX_CONTENT_DESCRIPTION_LENGTH:I = 0x48c

.field public static final MAX_EXPANDED_BODY_LENGTH:I = 0x3e8

.field public static final MAX_EXPANDED_TITLE_LENGTH:I = 0x64

.field public static final MAX_STATUS_LENGTH:I = 0x20

.field public static final PARCELABLE_VERSION:I = 0x2


# instance fields
.field private mClickIntent:Landroid/content/Intent;

.field private mContentDescription:Ljava/lang/String;

.field private mExpandedBody:Ljava/lang/String;

.field private mExpandedTitle:Ljava/lang/String;

.field private mIcon:I

.field private mIconUri:Landroid/net/Uri;

.field private mStatus:Ljava/lang/String;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 351
    new-instance v0, Lcom/google/android/apps/dashclock/api/ExtensionData$1;

    invoke-direct {v0}, Lcom/google/android/apps/dashclock/api/ExtensionData$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/dashclock/api/ExtensionData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-boolean v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mVisible:Z

    .line 108
    iput v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIcon:I

    .line 109
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIconUri:Landroid/net/Uri;

    .line 110
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mStatus:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedTitle:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedBody:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mClickIntent:Landroid/content/Intent;

    .line 114
    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mContentDescription:Ljava/lang/String;

    .line 117
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-boolean v5, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mVisible:Z

    .line 108
    iput v5, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIcon:I

    .line 109
    iput-object v6, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIconUri:Landroid/net/Uri;

    .line 110
    iput-object v6, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mStatus:Ljava/lang/String;

    .line 111
    iput-object v6, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedTitle:Ljava/lang/String;

    .line 112
    iput-object v6, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedBody:Ljava/lang/String;

    .line 113
    iput-object v6, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mClickIntent:Landroid/content/Intent;

    .line 114
    iput-object v6, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mContentDescription:Ljava/lang/String;

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 364
    .local v2, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 365
    .local v1, "parcelableSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 366
    .local v3, "startPosition":I
    if-lt v2, v4, :cond_3

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    :goto_0
    iput-boolean v4, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mVisible:Z

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIcon:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mStatus:Ljava/lang/String;

    .line 370
    iget-object v4, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mStatus:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 371
    iput-object v6, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mStatus:Ljava/lang/String;

    .line 373
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedTitle:Ljava/lang/String;

    .line 374
    iget-object v4, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 375
    iput-object v6, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedTitle:Ljava/lang/String;

    .line 377
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedBody:Ljava/lang/String;

    .line 378
    iget-object v4, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedBody:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 379
    iput-object v6, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedBody:Ljava/lang/String;

    .line 382
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mClickIntent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_3
    :goto_1
    if-lt v2, v8, :cond_5

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mContentDescription:Ljava/lang/String;

    .line 388
    iget-object v4, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mContentDescription:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 389
    iput-object v6, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mContentDescription:Ljava/lang/String;

    .line 391
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "iconUriString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v6

    :goto_2
    iput-object v4, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIconUri:Landroid/net/Uri;

    .line 396
    .end local v0    # "iconUriString":Ljava/lang/String;
    :cond_5
    if-lt v2, v8, :cond_6

    .line 397
    add-int v4, v3, v1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 399
    :cond_6
    return-void

    :cond_7
    move v4, v5

    .line 367
    goto :goto_0

    .line 392
    .restart local v0    # "iconUriString":Ljava/lang/String;
    :cond_8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_2

    .line 383
    .end local v0    # "iconUriString":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/apps/dashclock/api/ExtensionData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/android/apps/dashclock/api/ExtensionData$1;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/apps/dashclock/api/ExtensionData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static equals(Lcom/google/android/apps/dashclock/api/ExtensionData;Lcom/google/android/apps/dashclock/api/ExtensionData;)Z
    .locals 1
    .param p0, "x"    # Lcom/google/android/apps/dashclock/api/ExtensionData;
    .param p1, "y"    # Lcom/google/android/apps/dashclock/api/ExtensionData;

    .prologue
    .line 470
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 471
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 473
    :goto_0
    return v0

    .line 471
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 473
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/apps/dashclock/api/ExtensionData;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "y"    # Ljava/lang/Object;

    .prologue
    .line 459
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 460
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 462
    :goto_0
    return v0

    .line 460
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 462
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public clean()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/16 v3, 0x20

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    .line 487
    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mStatus:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mStatus:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 489
    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mStatus:Ljava/lang/String;

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 493
    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedTitle:Ljava/lang/String;

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 497
    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedBody:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedBody:Ljava/lang/String;

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mContentDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mContentDescription:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 501
    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mContentDescription:Ljava/lang/String;

    const/16 v1, 0x48c

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mContentDescription:Ljava/lang/String;

    .line 503
    :cond_3
    return-void
.end method

.method public clickIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mClickIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public clickIntent(Landroid/content/Intent;)Lcom/google/android/apps/dashclock/api/ExtensionData;
    .locals 0
    .param p1, "clickIntent"    # Landroid/content/Intent;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mClickIntent:Landroid/content/Intent;

    .line 253
    return-object p0
.end method

.method public contentDescription(Ljava/lang/String;)Lcom/google/android/apps/dashclock/api/ExtensionData;
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mContentDescription:Ljava/lang/String;

    .line 275
    return-object p0
.end method

.method public contentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public deserialize(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 299
    const-string v1, "visible"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mVisible:Z

    .line 300
    const-string v1, "icon"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIcon:I

    .line 301
    const-string v1, "icon_uri"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "iconUriString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIconUri:Landroid/net/Uri;

    .line 303
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mStatus:Ljava/lang/String;

    .line 304
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedTitle:Ljava/lang/String;

    .line 305
    const-string v1, "body"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedBody:Ljava/lang/String;

    .line 307
    :try_start_0
    const-string v1, "click_intent"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mClickIntent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_1
    const-string v1, "content_description"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mContentDescription:Ljava/lang/String;

    .line 311
    return-void

    .line 302
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 308
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 438
    if-nez p1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v3

    .line 443
    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/dashclock/api/ExtensionData;

    move-object v2, v0

    .line 444
    .local v2, "other":Lcom/google/android/apps/dashclock/api/ExtensionData;
    iget-boolean v4, v2, Lcom/google/android/apps/dashclock/api/ExtensionData;->mVisible:Z

    iget-boolean v5, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mVisible:Z

    if-ne v4, v5, :cond_0

    iget v4, v2, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIcon:I

    iget v5, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIcon:I

    if-ne v4, v5, :cond_0

    iget-object v4, v2, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIconUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIconUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/google/android/apps/dashclock/api/ExtensionData;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/google/android/apps/dashclock/api/ExtensionData;->mStatus:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mStatus:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedTitle:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedBody:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedBody:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/google/android/apps/dashclock/api/ExtensionData;->mClickIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mClickIntent:Landroid/content/Intent;

    invoke-static {v4, v5}, Lcom/google/android/apps/dashclock/api/ExtensionData;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/google/android/apps/dashclock/api/ExtensionData;->mContentDescription:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mContentDescription:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 453
    .end local v2    # "other":Lcom/google/android/apps/dashclock/api/ExtensionData;
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public expandedBody(Ljava/lang/String;)Lcom/google/android/apps/dashclock/api/ExtensionData;
    .locals 0
    .param p1, "expandedBody"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedBody:Ljava/lang/String;

    .line 233
    return-object p0
.end method

.method public expandedBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedBody:Ljava/lang/String;

    return-object v0
.end method

.method public expandedTitle(Ljava/lang/String;)Lcom/google/android/apps/dashclock/api/ExtensionData;
    .locals 0
    .param p1, "expandedTitle"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedTitle:Ljava/lang/String;

    .line 217
    return-object p0
.end method

.method public expandedTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedTitle:Ljava/lang/String;

    return-object v0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "src"    # Landroid/os/Bundle;

    .prologue
    .line 334
    const-string v1, "visible"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mVisible:Z

    .line 335
    const-string v1, "icon"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIcon:I

    .line 336
    const-string v1, "icon_uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "iconUriString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIconUri:Landroid/net/Uri;

    .line 338
    const-string v1, "status"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mStatus:Ljava/lang/String;

    .line 339
    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedTitle:Ljava/lang/String;

    .line 340
    const-string v1, "body"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedBody:Ljava/lang/String;

    .line 342
    :try_start_0
    const-string v1, "click_intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mClickIntent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_1
    const-string v1, "content_description"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mContentDescription:Ljava/lang/String;

    .line 346
    return-void

    .line 337
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 479
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public icon()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIcon:I

    return v0
.end method

.method public icon(I)Lcom/google/android/apps/dashclock/api/ExtensionData;
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIcon:I

    .line 155
    return-object p0
.end method

.method public iconUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public iconUri(Landroid/net/Uri;)Lcom/google/android/apps/dashclock/api/ExtensionData;
    .locals 0
    .param p1, "iconUri"    # Landroid/net/Uri;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIconUri:Landroid/net/Uri;

    .line 178
    return-object p0
.end method

.method public serialize()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 282
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 283
    .local v0, "data":Lorg/json/JSONObject;
    const-string v1, "visible"

    iget-boolean v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mVisible:Z

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 284
    const-string v1, "icon"

    iget v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIcon:I

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 285
    const-string v3, "icon_uri"

    iget-object v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIconUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string v1, "status"

    iget-object v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string v1, "title"

    iget-object v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    const-string v1, "body"

    iget-object v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedBody:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v1, "click_intent"

    iget-object v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mClickIntent:Landroid/content/Intent;

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v1, "content_description"

    iget-object v2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    return-object v0

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mClickIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public status(Ljava/lang/String;)Lcom/google/android/apps/dashclock/api/ExtensionData;
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mStatus:Ljava/lang/String;

    .line 198
    return-object p0
.end method

.method public status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 317
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 318
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "visible"

    iget-boolean v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mVisible:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    const-string v1, "icon"

    iget v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIcon:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 320
    const-string v3, "icon_uri"

    iget-object v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIconUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v1, "status"

    iget-object v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v1, "title"

    iget-object v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v1, "body"

    iget-object v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedBody:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v1, "click_intent"

    iget-object v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mClickIntent:Landroid/content/Intent;

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v1, "content_description"

    iget-object v2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-object v0

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mClickIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public visible(Z)Lcom/google/android/apps/dashclock/api/ExtensionData;
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mVisible:Z

    .line 133
    return-object p0
.end method

.method public visible()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mVisible:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    const/4 v4, 0x0

    .line 407
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 411
    .local v1, "sizePosition":I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 414
    .local v2, "startPosition":I
    iget-boolean v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mVisible:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIcon:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget-object v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mStatus:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 417
    iget-object v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, ""

    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 418
    iget-object v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedBody:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, ""

    :goto_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    iget-object v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mClickIntent:Landroid/content/Intent;

    if-nez v3, :cond_4

    const-string v3, ""

    :goto_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 421
    iget-object v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mContentDescription:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, ""

    :goto_5
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 422
    iget-object v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIconUri:Landroid/net/Uri;

    if-nez v3, :cond_6

    const-string v3, ""

    :goto_6
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int v0, v3, v2

    .line 425
    .local v0, "parcelableSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 426
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 428
    return-void

    .end local v0    # "parcelableSize":I
    :cond_0
    move v3, v4

    .line 414
    goto :goto_0

    .line 416
    :cond_1
    iget-object v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mStatus:Ljava/lang/String;

    goto :goto_1

    .line 417
    :cond_2
    iget-object v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedTitle:Ljava/lang/String;

    goto :goto_2

    .line 418
    :cond_3
    iget-object v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mExpandedBody:Ljava/lang/String;

    goto :goto_3

    .line 419
    :cond_4
    iget-object v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mClickIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 421
    :cond_5
    iget-object v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mContentDescription:Ljava/lang/String;

    goto :goto_5

    .line 422
    :cond_6
    iget-object v3, p0, Lcom/google/android/apps/dashclock/api/ExtensionData;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6
.end method
