.class public Landroid/support/v4/app/bb;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_CHARSEQUENCE_LENGTH:I = 0x1400


# instance fields
.field public mActions:Ljava/util/ArrayList;

.field mCategory:Ljava/lang/String;

.field mColor:I

.field public mContentInfo:Ljava/lang/CharSequence;

.field mContentIntent:Landroid/app/PendingIntent;

.field public mContentText:Ljava/lang/CharSequence;

.field public mContentTitle:Ljava/lang/CharSequence;

.field public mContext:Landroid/content/Context;

.field mExtras:Landroid/os/Bundle;

.field mFullScreenIntent:Landroid/app/PendingIntent;

.field mGroupKey:Ljava/lang/String;

.field mGroupSummary:Z

.field public mLargeIcon:Landroid/graphics/Bitmap;

.field mLocalOnly:Z

.field public mNotification:Landroid/app/Notification;

.field public mNumber:I

.field public mPeople:Ljava/util/ArrayList;

.field mPriority:I

.field mProgress:I

.field mProgressIndeterminate:Z

.field mProgressMax:I

.field mPublicVersion:Landroid/app/Notification;

.field mShowWhen:Z

.field mSortKey:Ljava/lang/String;

.field public mStyle:Landroid/support/v4/app/bo;

.field public mSubText:Ljava/lang/CharSequence;

.field mTickerView:Landroid/widget/RemoteViews;

.field public mUseChronometer:Z

.field mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/bb;->mShowWhen:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bb;->mActions:Ljava/util/ArrayList;

    iput-boolean v4, p0, Landroid/support/v4/app/bb;->mLocalOnly:Z

    iput v4, p0, Landroid/support/v4/app/bb;->mColor:I

    iput v4, p0, Landroid/support/v4/app/bb;->mVisibility:I

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iput-object p1, p0, Landroid/support/v4/app/bb;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    iput v4, p0, Landroid/support/v4/app/bb;->mPriority:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bb;->mPeople:Ljava/util/ArrayList;

    return-void
.end method

.method protected static limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    const/16 v1, 0x1400

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method

.method private setFlag(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/bb;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/bb;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v4/app/ay;

    invoke-direct {v1, p1, p2, p3}, Landroid/support/v4/app/ay;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAction(Landroid/support/v4/app/ay;)Landroid/support/v4/app/bb;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bb;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroid/support/v4/app/bb;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/bb;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/app/bb;->mExtras:Landroid/os/Bundle;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/bb;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public addPerson(Ljava/lang/String;)Landroid/support/v4/app/bb;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bb;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 2

    invoke-static {}, Landroid/support/v4/app/ax;->access$200()Landroid/support/v4/app/bf;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/bb;->getExtender()Landroid/support/v4/app/bc;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/support/v4/app/bf;->a(Landroid/support/v4/app/bb;Landroid/support/v4/app/bc;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public extend(Landroid/support/v4/app/bd;)Landroid/support/v4/app/bb;
    .locals 0

    invoke-interface {p1, p0}, Landroid/support/v4/app/bd;->a(Landroid/support/v4/app/bb;)Landroid/support/v4/app/bb;

    return-object p0
.end method

.method protected getExtender()Landroid/support/v4/app/bc;
    .locals 1

    new-instance v0, Landroid/support/v4/app/bc;

    invoke-direct {v0}, Landroid/support/v4/app/bc;-><init>()V

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bb;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bb;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/bb;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/app/bb;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAutoCancel(Z)Landroid/support/v4/app/bb;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/bb;->setFlag(IZ)V

    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroid/support/v4/app/bb;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/bb;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method public setColor(I)Landroid/support/v4/app/bb;
    .locals 0

    iput p1, p0, Landroid/support/v4/app/bb;->mColor:I

    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/bb;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/bb;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/bb;->mContentInfo:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/bb;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/bb;->mContentIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/bb;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/bb;->mContentText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/bb;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/bb;->mContentTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDefaults(I)Landroid/support/v4/app/bb;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/bb;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/support/v4/app/bb;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/bb;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/support/v4/app/bb;
    .locals 1

    iput-object p1, p0, Landroid/support/v4/app/bb;->mFullScreenIntent:Landroid/app/PendingIntent;

    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Landroid/support/v4/app/bb;->setFlag(IZ)V

    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroid/support/v4/app/bb;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/bb;->mGroupKey:Ljava/lang/String;

    return-object p0
.end method

.method public setGroupSummary(Z)Landroid/support/v4/app/bb;
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/app/bb;->mGroupSummary:Z

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/bb;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/bb;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setLights(III)Landroid/support/v4/app/bb;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledOnMS:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledOffMS:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, -0x2

    if-eqz v0, :cond_1

    :goto_1
    or-int v0, v4, v1

    iput v0, v3, Landroid/app/Notification;->flags:I

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setLocalOnly(Z)Landroid/support/v4/app/bb;
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/app/bb;->mLocalOnly:Z

    return-object p0
.end method

.method public setNumber(I)Landroid/support/v4/app/bb;
    .locals 0

    iput p1, p0, Landroid/support/v4/app/bb;->mNumber:I

    return-object p0
.end method

.method public setOngoing(Z)Landroid/support/v4/app/bb;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/bb;->setFlag(IZ)V

    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/support/v4/app/bb;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/bb;->setFlag(IZ)V

    return-object p0
.end method

.method public setPriority(I)Landroid/support/v4/app/bb;
    .locals 0

    iput p1, p0, Landroid/support/v4/app/bb;->mPriority:I

    return-object p0
.end method

.method public setProgress(IIZ)Landroid/support/v4/app/bb;
    .locals 0

    iput p1, p0, Landroid/support/v4/app/bb;->mProgressMax:I

    iput p2, p0, Landroid/support/v4/app/bb;->mProgress:I

    iput-boolean p3, p0, Landroid/support/v4/app/bb;->mProgressIndeterminate:Z

    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroid/support/v4/app/bb;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/bb;->mPublicVersion:Landroid/app/Notification;

    return-object p0
.end method

.method public setShowWhen(Z)Landroid/support/v4/app/bb;
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/app/bb;->mShowWhen:Z

    return-object p0
.end method

.method public setSmallIcon(I)Landroid/support/v4/app/bb;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public setSmallIcon(II)Landroid/support/v4/app/bb;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroid/support/v4/app/bb;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/bb;->mSortKey:Ljava/lang/String;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/support/v4/app/bb;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/support/v4/app/bb;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    return-object p0
.end method

.method public setStyle(Landroid/support/v4/app/bo;)Landroid/support/v4/app/bb;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bb;->mStyle:Landroid/support/v4/app/bo;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/v4/app/bb;->mStyle:Landroid/support/v4/app/bo;

    iget-object v0, p0, Landroid/support/v4/app/bb;->mStyle:Landroid/support/v4/app/bo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/bb;->mStyle:Landroid/support/v4/app/bo;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/bo;->setBuilder(Landroid/support/v4/app/bb;)V

    :cond_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/bb;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/bb;->mSubText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/bb;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/support/v4/app/bb;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/bb;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/support/v4/app/bb;->mTickerView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/support/v4/app/bb;
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/app/bb;->mUseChronometer:Z

    return-object p0
.end method

.method public setVibrate([J)Landroid/support/v4/app/bb;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method public setVisibility(I)Landroid/support/v4/app/bb;
    .locals 0

    iput p1, p0, Landroid/support/v4/app/bb;->mVisibility:I

    return-object p0
.end method

.method public setWhen(J)Landroid/support/v4/app/bb;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bb;->mNotification:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method
