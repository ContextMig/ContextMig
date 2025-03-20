.class Lcom/fsck/k9/activity/Accounts$SimpleDialog;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Lcom/fsck/k9/activity/misc/NonConfigurationInstance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/Accounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleDialog"
.end annotation


# instance fields
.field private mArguments:[Ljava/lang/Object;

.field private mDialog:Landroid/app/Dialog;

.field private final mHeaderRes:I

.field private final mMessageRes:I


# direct methods
.method varargs constructor <init>(II[Ljava/lang/Object;)V
    .locals 0
    .param p1, "headerRes"    # I
    .param p2, "messageRes"    # I
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1478
    iput p1, p0, Lcom/fsck/k9/activity/Accounts$SimpleDialog;->mHeaderRes:I

    .line 1479
    iput p2, p0, Lcom/fsck/k9/activity/Accounts$SimpleDialog;->mMessageRes:I

    .line 1480
    iput-object p3, p0, Lcom/fsck/k9/activity/Accounts$SimpleDialog;->mArguments:[Ljava/lang/Object;

    .line 1481
    return-void
.end method


# virtual methods
.method protected generateMessage(Lcom/fsck/k9/activity/Accounts;)Ljava/lang/String;
    .locals 2
    .param p1, "activity"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 1525
    iget v0, p0, Lcom/fsck/k9/activity/Accounts$SimpleDialog;->mMessageRes:I

    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$SimpleDialog;->mArguments:[Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/activity/Accounts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected okayAction(Lcom/fsck/k9/activity/Accounts;)V
    .locals 0
    .param p1, "activity"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 1536
    return-void
.end method

.method public restore(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1485
    check-cast p1, Lcom/fsck/k9/activity/Accounts;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/Accounts$SimpleDialog;->show(Lcom/fsck/k9/activity/Accounts;)V

    .line 1486
    return-void
.end method

.method public retain()Z
    .locals 1

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$SimpleDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$SimpleDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/activity/Accounts$SimpleDialog;->mDialog:Landroid/app/Dialog;

    .line 1493
    const/4 v0, 0x1

    .line 1495
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(Lcom/fsck/k9/activity/Accounts;)V
    .locals 4
    .param p1, "activity"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 1499
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/Accounts$SimpleDialog;->generateMessage(Lcom/fsck/k9/activity/Accounts;)Ljava/lang/String;

    move-result-object v1

    .line 1501
    .local v1, "message":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1502
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget v2, p0, Lcom/fsck/k9/activity/Accounts$SimpleDialog;->mHeaderRes:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1503
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1504
    const v2, 0x7f0702eb

    new-instance v3, Lcom/fsck/k9/activity/Accounts$SimpleDialog$1;

    invoke-direct {v3, p0, p1}, Lcom/fsck/k9/activity/Accounts$SimpleDialog$1;-><init>(Lcom/fsck/k9/activity/Accounts$SimpleDialog;Lcom/fsck/k9/activity/Accounts;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1513
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/Accounts$SimpleDialog;->mDialog:Landroid/app/Dialog;

    .line 1514
    return-void
.end method
