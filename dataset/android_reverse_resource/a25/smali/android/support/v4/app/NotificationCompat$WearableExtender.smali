.class public final Landroid/support/v4/app/NotificationCompat$WearableExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field private static final DEFAULT_CONTENT_ICON_GRAVITY:I = 0x800005

.field private static final DEFAULT_FLAGS:I = 0x1

.field private static final DEFAULT_GRAVITY:I = 0x50

.field private static final EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final FLAG_BIG_PICTURE_AMBIENT:I = 0x20

.field private static final FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE:I = 0x1

.field private static final FLAG_HINT_AVOID_BACKGROUND_CLIPPING:I = 0x10

.field private static final FLAG_HINT_CONTENT_INTENT_LAUNCHES_ACTIVITY:I = 0x40

.field private static final FLAG_HINT_HIDE_ICON:I = 0x2

.field private static final FLAG_HINT_SHOW_BACKGROUND_ONLY:I = 0x4

.field private static final FLAG_START_SCROLL_BOTTOM:I = 0x8

.field private static final KEY_ACTIONS:Ljava/lang/String; = "actions"

.field private static final KEY_BACKGROUND:Ljava/lang/String; = "background"

.field private static final KEY_BRIDGE_TAG:Ljava/lang/String; = "bridgeTag"

.field private static final KEY_CONTENT_ACTION_INDEX:Ljava/lang/String; = "contentActionIndex"

.field private static final KEY_CONTENT_ICON:Ljava/lang/String; = "contentIcon"

.field private static final KEY_CONTENT_ICON_GRAVITY:Ljava/lang/String; = "contentIconGravity"

.field private static final KEY_CUSTOM_CONTENT_HEIGHT:Ljava/lang/String; = "customContentHeight"

.field private static final KEY_CUSTOM_SIZE_PRESET:Ljava/lang/String; = "customSizePreset"

.field private static final KEY_DISMISSAL_ID:Ljava/lang/String; = "dismissalId"

.field private static final KEY_DISPLAY_INTENT:Ljava/lang/String; = "displayIntent"

.field private static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final KEY_GRAVITY:Ljava/lang/String; = "gravity"

.field private static final KEY_HINT_SCREEN_TIMEOUT:Ljava/lang/String; = "hintScreenTimeout"

.field private static final KEY_PAGES:Ljava/lang/String; = "pages"

.field public static final SCREEN_TIMEOUT_LONG:I = -0x1

.field public static final SCREEN_TIMEOUT_SHORT:I = 0x0

.field public static final SIZE_DEFAULT:I = 0x0

.field public static final SIZE_FULL_SCREEN:I = 0x5

.field public static final SIZE_LARGE:I = 0x4

.field public static final SIZE_MEDIUM:I = 0x3

.field public static final SIZE_SMALL:I = 0x2

.field public static final SIZE_XSMALL:I = 0x1

.field public static final UNSET_ACTION_INDEX:I = -0x1


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mBackground:Landroid/graphics/Bitmap;

.field private mBridgeTag:Ljava/lang/String;

.field private mContentActionIndex:I

.field private mContentIcon:I

.field private mContentIconGravity:I

.field private mCustomContentHeight:I

.field private mCustomSizePreset:I

.field private mDismissalId:Ljava/lang/String;

.field private mDisplayIntent:Landroid/app/PendingIntent;

.field private mFlags:I

.field private mGravity:I

.field private mHintScreenTimeout:I

.field private mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3387
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 3389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    const v0, 0x800005

    .line 3392
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    const/4 v0, -0x1

    .line 3393
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    const/4 v0, 0x0

    .line 3394
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    const/16 v0, 0x50

    .line 3396
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 11

    .line 3408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3387
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 3389
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    const v1, 0x800005

    .line 3392
    iput v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    const/4 v2, -0x1

    .line 3393
    iput v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    const/4 v3, 0x0

    .line 3394
    iput v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    const/16 v4, 0x50

    .line 3396
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 3409
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v5, "android.wearable.EXTENSIONS"

    .line 3410
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_6

    const-string v5, "actions"

    .line 3414
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 3415
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_4

    if-eqz v5, :cond_4

    .line 3416
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/support/v4/app/NotificationCompat$Action;

    move v8, v3

    .line 3417
    :goto_1
    array-length v9, v6

    if-ge v8, v9, :cond_3

    .line 3418
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x14

    if-lt v9, v10, :cond_1

    .line 3420
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Notification$Action;

    .line 3419
    invoke-static {v9}, Landroid/support/v4/app/NotificationCompat;->getActionCompatFromAction(Landroid/app/Notification$Action;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v9

    aput-object v9, v6, v8

    goto :goto_2

    .line 3421
    :cond_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v7, :cond_2

    .line 3423
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 3422
    invoke-static {v9}, Landroid/support/v4/app/NotificationCompatJellybean;->getActionFromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v9

    aput-object v9, v6, v8

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3426
    :cond_3
    iget-object v5, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    check-cast v6, [Landroid/support/v4/app/NotificationCompat$Action;

    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_4
    const-string v5, "flags"

    .line 3429
    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    const-string v0, "displayIntent"

    .line 3430
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    const-string v0, "pages"

    .line 3432
    invoke-static {p1, v0}, Landroid/support/v4/app/NotificationCompat;->getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3435
    iget-object v5, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-static {v5, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_5
    const-string v0, "background"

    .line 3438
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    const-string v0, "contentIcon"

    .line 3439
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    const-string v0, "contentIconGravity"

    .line 3440
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    const-string v0, "contentActionIndex"

    .line 3442
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    const-string v0, "customSizePreset"

    .line 3444
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    const-string v0, "customContentHeight"

    .line 3446
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    const-string v0, "gravity"

    .line 3447
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    const-string v0, "hintScreenTimeout"

    .line 3448
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    const-string v0, "dismissalId"

    .line 3449
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    const-string v0, "bridgeTag"

    .line 3450
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method private static getActionFromActionCompat(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/app/Notification$Action;
    .locals 4
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x14
    .end annotation

    .line 3527
    new-instance v0, Landroid/app/Notification$Action$Builder;

    .line 3528
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getIcon()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 3529
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 3531
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3532
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 3534
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v2, "android.support.allowGeneratedReplies"

    .line 3537
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v3

    .line 3536
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3538
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 3539
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 3541
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 3542
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3544
    invoke-static {p0}, Landroid/support/v4/app/RemoteInput;->fromCompat([Landroid/support/v4/app/RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object p0

    .line 3545
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 3546
    invoke-virtual {v0, v3}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3549
    :cond_2
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method private setFlag(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 4101
    iget p2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    goto :goto_0

    .line 4103
    :cond_0
    iget p2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    :goto_0
    return-void
.end method


# virtual methods
.method public addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .line 3585
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addActions(Ljava/util/List;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;)",
            "Landroid/support/v4/app/NotificationCompat$WearableExtender;"
        }
    .end annotation

    .line 3602
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addPage(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .line 3677
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPages(Ljava/util/List;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification;",
            ">;)",
            "Landroid/support/v4/app/NotificationCompat$WearableExtender;"
        }
    .end annotation

    .line 3692
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public clearActions()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .line 3612
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public clearPages()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .line 3702
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public clone()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 3

    .line 3554
    new-instance v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 3555
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 3556
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 3557
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 3558
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 3559
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 3560
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    .line 3561
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 3562
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 3563
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 3564
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    .line 3565
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 3566
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    .line 3567
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 3568
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3284
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->clone()Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public extend(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 7

    .line 3461
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3463
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3464
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    .line 3465
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3466
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/NotificationCompat$Action;

    .line 3467
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x14

    if-lt v5, v6, :cond_1

    .line 3469
    invoke-static {v4}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getActionFromActionCompat(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/app/Notification$Action;

    move-result-object v4

    .line 3468
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3470
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v2, :cond_0

    .line 3471
    invoke-static {v4}, Landroid/support/v4/app/NotificationCompatJellybean;->getBundleForAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v2, "actions"

    .line 3474
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    const-string v1, "actions"

    const/4 v2, 0x0

    .line 3476
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3479
    :cond_4
    :goto_1
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const-string v1, "flags"

    .line 3480
    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3482
    :cond_5
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_6

    const-string v1, "displayIntent"

    .line 3483
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3485
    :cond_6
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "pages"

    .line 3486
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 3487
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/app/Notification;

    .line 3486
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 3489
    :cond_7
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    const-string v1, "background"

    .line 3490
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3492
    :cond_8
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    if-eqz v1, :cond_9

    const-string v1, "contentIcon"

    .line 3493
    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3495
    :cond_9
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    const v2, 0x800005

    if-eq v1, v2, :cond_a

    const-string v1, "contentIconGravity"

    .line 3496
    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3498
    :cond_a
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    const-string v1, "contentActionIndex"

    .line 3499
    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3502
    :cond_b
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    if-eqz v1, :cond_c

    const-string v1, "customSizePreset"

    .line 3503
    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3505
    :cond_c
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    if-eqz v1, :cond_d

    const-string v1, "customContentHeight"

    .line 3506
    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3508
    :cond_d
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_e

    const-string v1, "gravity"

    .line 3509
    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3511
    :cond_e
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    if-eqz v1, :cond_f

    const-string v1, "hintScreenTimeout"

    .line 3512
    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3514
    :cond_f
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    if-eqz v1, :cond_10

    const-string v1, "dismissalId"

    .line 3515
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3517
    :cond_10
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    if-eqz v1, :cond_11

    const-string v1, "bridgeTag"

    .line 3518
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3521
    :cond_11
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .line 3620
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBackground()Landroid/graphics/Bitmap;
    .locals 1

    .line 3740
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBridgeTag()Ljava/lang/String;
    .locals 1

    .line 4096
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    return-object v0
.end method

.method public getContentAction()I
    .locals 1

    .line 3813
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    return v0
.end method

.method public getContentIcon()I
    .locals 1

    .line 3755
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    return v0
.end method

.method public getContentIconGravity()I
    .locals 1

    .line 3776
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    return v0
.end method

.method public getContentIntentAvailableOffline()Z
    .locals 2

    .line 3923
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getCustomContentHeight()I
    .locals 1

    .line 3882
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    return v0
.end method

.method public getCustomSizePreset()I
    .locals 1

    .line 3860
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    return v0
.end method

.method public getDismissalId()Ljava/lang/String;
    .locals 1

    .line 4075
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 3663
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .line 3834
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    return v0
.end method

.method public getHintAmbientBigPicture()Z
    .locals 1

    .line 4030
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHintAvoidBackgroundClipping()Z
    .locals 1

    .line 3985
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHintContentIntentLaunchesActivity()Z
    .locals 1

    .line 4053
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHintHideIcon()Z
    .locals 1

    .line 3942
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHintScreenTimeout()I
    .locals 1

    .line 4007
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    return v0
.end method

.method public getHintShowBackgroundOnly()Z
    .locals 1

    .line 3961
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .line 3714
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartScrollBottom()Z
    .locals 1

    .line 3901
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBackground(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .line 3727
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setBridgeTag(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .line 4087
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    return-object p0
.end method

.method public setContentAction(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .line 3794
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    return-object p0
.end method

.method public setContentIcon(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .line 3747
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    return-object p0
.end method

.method public setContentIconGravity(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .line 3765
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    return-object p0
.end method

.method public setContentIntentAvailableOffline(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    const/4 v0, 0x1

    .line 3912
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    return-object p0
.end method

.method public setCustomContentHeight(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .line 3871
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    return-object p0
.end method

.method public setCustomSizePreset(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .line 3847
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    return-object p0
.end method

.method public setDismissalId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .line 4066
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .line 3654
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setGravity(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .line 3823
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    return-object p0
.end method

.method public setHintAmbientBigPicture(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    const/16 v0, 0x20

    .line 4018
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    return-object p0
.end method

.method public setHintAvoidBackgroundClipping(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    const/16 v0, 0x10

    .line 3973
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    return-object p0
.end method

.method public setHintContentIntentLaunchesActivity(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    const/16 v0, 0x40

    .line 4042
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    return-object p0
.end method

.method public setHintHideIcon(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    const/4 v0, 0x2

    .line 3932
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    return-object p0
.end method

.method public setHintScreenTimeout(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .line 3996
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    return-object p0
.end method

.method public setHintShowBackgroundOnly(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    const/4 v0, 0x4

    .line 3951
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    return-object p0
.end method

.method public setStartScrollBottom(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    const/16 v0, 0x8

    .line 3891
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    return-object p0
.end method
