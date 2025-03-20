.class Lcom/fsck/k9/activity/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/ColorPickerDialog;-><init>(Landroid/content/Context;Lcom/fsck/k9/activity/ColorPickerDialog$OnColorChangedListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/ColorPickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/ColorPickerDialog;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fsck/k9/activity/ColorPickerDialog$1;->this$0:Lcom/fsck/k9/activity/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fsck/k9/activity/ColorPickerDialog$1;->this$0:Lcom/fsck/k9/activity/ColorPickerDialog;

    iget-object v0, v0, Lcom/fsck/k9/activity/ColorPickerDialog;->mColorChangedListener:Lcom/fsck/k9/activity/ColorPickerDialog$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/ColorPickerDialog$1;->this$0:Lcom/fsck/k9/activity/ColorPickerDialog;

    iget-object v0, v0, Lcom/fsck/k9/activity/ColorPickerDialog;->mColorChangedListener:Lcom/fsck/k9/activity/ColorPickerDialog$OnColorChangedListener;

    iget-object v1, p0, Lcom/fsck/k9/activity/ColorPickerDialog$1;->this$0:Lcom/fsck/k9/activity/ColorPickerDialog;

    iget-object v1, v1, Lcom/fsck/k9/activity/ColorPickerDialog;->mColorPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    invoke-virtual {v1}, Lcom/larswerkman/colorpicker/ColorPicker;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fsck/k9/activity/ColorPickerDialog$OnColorChangedListener;->colorChanged(I)V

    .line 55
    :cond_0
    return-void
.end method
