.class Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$1;
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


# direct methods
.method constructor <init>(Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$1;->this$0:Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->cancelAddToHomescreenShortcutEvent()V

    .line 93
    iget-object v0, p0, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$1;->this$0:Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;

    invoke-virtual {v0}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->dismiss()V

    .line 94
    return-void
.end method
