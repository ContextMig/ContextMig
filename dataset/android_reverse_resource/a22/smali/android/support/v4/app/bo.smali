.class public abstract Landroid/support/v4/app/bo;
.super Ljava/lang/Object;


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field mBuilder:Landroid/support/v4/app/bb;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/bo;->mSummaryTextSet:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/bo;->mBuilder:Landroid/support/v4/app/bb;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/bo;->mBuilder:Landroid/support/v4/app/bb;

    invoke-virtual {v0}, Landroid/support/v4/app/bb;->build()Landroid/app/Notification;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public setBuilder(Landroid/support/v4/app/bb;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bo;->mBuilder:Landroid/support/v4/app/bb;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/v4/app/bo;->mBuilder:Landroid/support/v4/app/bb;

    iget-object v0, p0, Landroid/support/v4/app/bo;->mBuilder:Landroid/support/v4/app/bb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/bo;->mBuilder:Landroid/support/v4/app/bb;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/bb;->setStyle(Landroid/support/v4/app/bo;)Landroid/support/v4/app/bb;

    :cond_0
    return-void
.end method
