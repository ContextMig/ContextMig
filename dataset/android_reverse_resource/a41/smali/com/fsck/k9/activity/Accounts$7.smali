.class Lcom/fsck/k9/activity/Accounts$7;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/Accounts;->onAbout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/Accounts;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$7;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "c"    # I

    .prologue
    .line 1350
    new-instance v0, Lde/cketti/library/changelog/ChangeLog;

    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$7;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-direct {v0, v1}, Lde/cketti/library/changelog/ChangeLog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/cketti/library/changelog/ChangeLog;->getFullLogDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1351
    return-void
.end method
