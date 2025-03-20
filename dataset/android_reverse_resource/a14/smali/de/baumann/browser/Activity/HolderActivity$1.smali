.class Lde/baumann/browser/Activity/HolderActivity$1;
.super Ljava/util/TimerTask;
.source "HolderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/HolderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/HolderActivity;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/HolderActivity;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lde/baumann/browser/Activity/HolderActivity$1;->this$0:Lde/baumann/browser/Activity/HolderActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 37
    iget-object v0, p0, Lde/baumann/browser/Activity/HolderActivity$1;->this$0:Lde/baumann/browser/Activity/HolderActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/HolderActivity;->access$000(Lde/baumann/browser/Activity/HolderActivity;)Lde/baumann/browser/Database/Record;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lde/baumann/browser/Activity/HolderActivity$1;->this$0:Lde/baumann/browser/Activity/HolderActivity;

    const-class v2, Lde/baumann/browser/Service/HolderService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lde/baumann/browser/Activity/HolderActivity$1;->this$0:Lde/baumann/browser/Activity/HolderActivity;

    invoke-static {v1}, Lde/baumann/browser/Activity/HolderActivity;->access$000(Lde/baumann/browser/Activity/HolderActivity;)Lde/baumann/browser/Database/Record;

    move-result-object v1

    invoke-static {v1}, Lde/baumann/browser/Unit/RecordUnit;->setHolder(Lde/baumann/browser/Database/Record;)V

    .line 41
    iget-object v1, p0, Lde/baumann/browser/Activity/HolderActivity$1;->this$0:Lde/baumann/browser/Activity/HolderActivity;

    invoke-virtual {v1, v0}, Lde/baumann/browser/Activity/HolderActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 43
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/Activity/HolderActivity$1;->this$0:Lde/baumann/browser/Activity/HolderActivity;

    invoke-virtual {v0}, Lde/baumann/browser/Activity/HolderActivity;->finish()V

    return-void
.end method
