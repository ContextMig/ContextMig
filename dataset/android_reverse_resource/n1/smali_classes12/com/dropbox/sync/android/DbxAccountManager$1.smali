.class Lcom/dropbox/sync/android/DbxAccountManager$1;
.super Ljava/lang/Object;
.source "DbxAccountManager.java"

# interfaces
.implements Lcom/dropbox/sync/android/CoreAccountManager$AccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/DbxAccountManager;->addListener(Lcom/dropbox/sync/android/DbxAccountManager$AccountListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/DbxAccountManager;

.field final synthetic val$dbxListener:Lcom/dropbox/sync/android/DbxAccountManager$AccountListener;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/DbxAccountManager;Lcom/dropbox/sync/android/DbxAccountManager$AccountListener;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxAccountManager$1;->this$0:Lcom/dropbox/sync/android/DbxAccountManager;

    iput-object p2, p0, Lcom/dropbox/sync/android/DbxAccountManager$1;->val$dbxListener:Lcom/dropbox/sync/android/DbxAccountManager$AccountListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkedAccountChange(Lcom/dropbox/sync/android/DbxAccount;)V
    .locals 2
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxAccountManager$1;->val$dbxListener:Lcom/dropbox/sync/android/DbxAccountManager$AccountListener;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxAccountManager$1;->this$0:Lcom/dropbox/sync/android/DbxAccountManager;

    invoke-interface {v0, v1, p1}, Lcom/dropbox/sync/android/DbxAccountManager$AccountListener;->onLinkedAccountChange(Lcom/dropbox/sync/android/DbxAccountManager;Lcom/dropbox/sync/android/DbxAccount;)V

    .line 453
    return-void
.end method
