.class Lcom/fsck/k9/helper/FileBrowserHelper$1;
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

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/fsck/k9/helper/FileBrowserHelper;Landroid/widget/EditText;Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/helper/FileBrowserHelper;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/fsck/k9/helper/FileBrowserHelper$1;->this$0:Lcom/fsck/k9/helper/FileBrowserHelper;

    iput-object p2, p0, Lcom/fsck/k9/helper/FileBrowserHelper$1;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/fsck/k9/helper/FileBrowserHelper$1;->val$callback:Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 153
    iget-object v1, p0, Lcom/fsck/k9/helper/FileBrowserHelper$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/helper/FileBrowserHelper$1;->val$callback:Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;

    invoke-interface {v1, v0}, Lcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;->onPathEntered(Ljava/lang/String;)V

    .line 155
    return-void
.end method
