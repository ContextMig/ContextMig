.class Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$2;
.super Ljava/lang/Object;
.source "AddToHomescreenDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;

.field final synthetic val$blockingEnabled:Z

.field final synthetic val$editableTitle:Landroid/widget/EditText;

.field final synthetic val$requestDesktop:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;Ljava/lang/String;Landroid/widget/EditText;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$2;->this$0:Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;

    iput-object p2, p0, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$2;->val$editableTitle:Landroid/widget/EditText;

    iput-boolean p4, p0, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$2;->val$blockingEnabled:Z

    iput-boolean p5, p0, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$2;->val$requestDesktop:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$2;->this$0:Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;

    invoke-virtual {v0}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$2;->this$0:Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;

    invoke-virtual {v1}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$2;->val$url:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/mozilla/focus/shortcut/IconGenerator;->generateLauncherIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$2;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$2;->val$editableTitle:Landroid/widget/EditText;

    .line 101
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$2;->val$blockingEnabled:Z

    iget-boolean v5, p0, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$2;->val$requestDesktop:Z

    .line 100
    invoke-static/range {v0 .. v5}, Lorg/mozilla/focus/shortcut/HomeScreen;->installShortCut(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 102
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->addToHomescreenShortcutEvent()V

    .line 103
    iget-object v0, p0, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$2;->this$0:Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;

    invoke-virtual {v0}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->dismiss()V

    .line 104
    return-void
.end method
