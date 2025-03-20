.class public Lcom/fsck/k9/activity/ColorPickerDialog;
.super Landroid/app/AlertDialog;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field mColorChangedListener:Lcom/fsck/k9/activity/ColorPickerDialog$OnColorChangedListener;

.field mColorPicker:Lcom/larswerkman/colorpicker/ColorPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/activity/ColorPickerDialog$OnColorChangedListener;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/fsck/k9/activity/ColorPickerDialog$OnColorChangedListener;
    .param p3, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/fsck/k9/activity/ColorPickerDialog;->mColorChangedListener:Lcom/fsck/k9/activity/ColorPickerDialog$OnColorChangedListener;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030012

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0c005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/larswerkman/colorpicker/ColorPicker;

    iput-object v1, p0, Lcom/fsck/k9/activity/ColorPickerDialog;->mColorPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    .line 44
    iget-object v1, p0, Lcom/fsck/k9/activity/ColorPickerDialog;->mColorPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    invoke-virtual {v1, p3}, Lcom/larswerkman/colorpicker/ColorPicker;->setColor(I)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/ColorPickerDialog;->setView(Landroid/view/View;)V

    .line 48
    const/4 v1, -0x1

    const v3, 0x7f0702eb

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/fsck/k9/activity/ColorPickerDialog$1;

    invoke-direct {v4, p0}, Lcom/fsck/k9/activity/ColorPickerDialog$1;-><init>(Lcom/fsck/k9/activity/ColorPickerDialog;)V

    invoke-virtual {p0, v1, v3, v4}, Lcom/fsck/k9/activity/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 58
    const/4 v3, -0x2

    const v1, 0x7f070153

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v2

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v1}, Lcom/fsck/k9/activity/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 60
    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fsck/k9/activity/ColorPickerDialog;->mColorPicker:Lcom/larswerkman/colorpicker/ColorPicker;

    invoke-virtual {v0, p1}, Lcom/larswerkman/colorpicker/ColorPicker;->setColor(I)V

    .line 70
    return-void
.end method
