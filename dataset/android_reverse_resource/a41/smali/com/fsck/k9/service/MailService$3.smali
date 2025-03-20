.class Lcom/fsck/k9/service/MailService$3;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/service/MailService;->reschedulePushersInBackground(ZZLjava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/service/MailService;

.field final synthetic val$doBackground:Z

.field final synthetic val$hasConnectivity:Z


# direct methods
.method constructor <init>(Lcom/fsck/k9/service/MailService;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/service/MailService;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/fsck/k9/service/MailService$3;->this$0:Lcom/fsck/k9/service/MailService;

    iput-boolean p2, p0, Lcom/fsck/k9/service/MailService$3;->val$hasConnectivity:Z

    iput-boolean p3, p0, Lcom/fsck/k9/service/MailService$3;->val$doBackground:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/fsck/k9/service/MailService$3;->this$0:Lcom/fsck/k9/service/MailService;

    iget-boolean v1, p0, Lcom/fsck/k9/service/MailService$3;->val$hasConnectivity:Z

    iget-boolean v2, p0, Lcom/fsck/k9/service/MailService$3;->val$doBackground:Z

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/service/MailService;->access$100(Lcom/fsck/k9/service/MailService;ZZ)V

    .line 211
    return-void
.end method
