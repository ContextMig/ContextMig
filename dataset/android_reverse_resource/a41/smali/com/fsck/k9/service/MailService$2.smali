.class Lcom/fsck/k9/service/MailService$2;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/service/MailService;->reschedulePollInBackground(ZZLjava/lang/Integer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/service/MailService;

.field final synthetic val$considerLastCheckEnd:Z

.field final synthetic val$doBackground:Z

.field final synthetic val$hasConnectivity:Z


# direct methods
.method constructor <init>(Lcom/fsck/k9/service/MailService;ZZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/service/MailService;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/fsck/k9/service/MailService$2;->this$0:Lcom/fsck/k9/service/MailService;

    iput-boolean p2, p0, Lcom/fsck/k9/service/MailService$2;->val$hasConnectivity:Z

    iput-boolean p3, p0, Lcom/fsck/k9/service/MailService$2;->val$doBackground:Z

    iput-boolean p4, p0, Lcom/fsck/k9/service/MailService$2;->val$considerLastCheckEnd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/fsck/k9/service/MailService$2;->this$0:Lcom/fsck/k9/service/MailService;

    iget-boolean v1, p0, Lcom/fsck/k9/service/MailService$2;->val$hasConnectivity:Z

    iget-boolean v2, p0, Lcom/fsck/k9/service/MailService$2;->val$doBackground:Z

    iget-boolean v3, p0, Lcom/fsck/k9/service/MailService$2;->val$considerLastCheckEnd:Z

    invoke-static {v0, v1, v2, v3}, Lcom/fsck/k9/service/MailService;->access$000(Lcom/fsck/k9/service/MailService;ZZZ)V

    .line 201
    return-void
.end method
