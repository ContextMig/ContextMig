.class Lcom/fsck/k9/helper/FileBrowserHelper$2;
.super Ljava/lang/Object;
.source "FileBrowserHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/helper/FileBrowserHelper;->showPathTextInput(Landroid/app/Activity;Ljava/io/File;Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/helper/FileBrowserHelper;

.field final synthetic val$callback:Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;


# direct methods
.method constructor <init>(Lcom/fsck/k9/helper/FileBrowserHelper;Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/helper/FileBrowserHelper;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/fsck/k9/helper/FileBrowserHelper$2;->this$0:Lcom/fsck/k9/helper/FileBrowserHelper;

    iput-object p2, p0, Lcom/fsck/k9/helper/FileBrowserHelper$2;->val$callback:Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/fsck/k9/helper/FileBrowserHelper$2;->val$callback:Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;

    invoke-interface {v0}, Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;->onCancel()V

    .line 162
    return-void
.end method
