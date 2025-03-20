.class Lcom/fsck/k9/activity/Accounts$2;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/StorageManager$StorageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/Accounts;
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
    .line 500
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$2;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMount(Ljava/lang/String;)V
    .locals 1
    .param p1, "providerId"    # Ljava/lang/String;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$2;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$1000(Lcom/fsck/k9/activity/Accounts;)V

    .line 510
    return-void
.end method

.method public onUnmount(Ljava/lang/String;)V
    .locals 1
    .param p1, "providerId"    # Ljava/lang/String;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$2;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$1000(Lcom/fsck/k9/activity/Accounts;)V

    .line 505
    return-void
.end method
