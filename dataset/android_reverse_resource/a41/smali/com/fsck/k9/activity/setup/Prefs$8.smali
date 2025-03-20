.class Lcom/fsck/k9/activity/setup/Prefs$8;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/Prefs;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/Prefs;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/Prefs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/Prefs;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/Prefs$8;->this$0:Lcom/fsck/k9/activity/setup/Prefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 604
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/Prefs$8;->this$0:Lcom/fsck/k9/activity/setup/Prefs;

    invoke-static {v0}, Lcom/fsck/k9/activity/setup/Prefs;->access$500(Lcom/fsck/k9/activity/setup/Prefs;)Lorg/openintents/openpgp/util/OpenPgpAppPreference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->show()V

    .line 605
    return-void
.end method
