.class public Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;
.super Landroid/widget/FrameLayout;
.source "ColorPickerSwatch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mCheckmarkImage:Landroid/widget/ImageView;

.field private mColor:I

.field private mOnColorSelectedListener:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;

.field private mSwatchImage:Landroid/widget/ImageView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xd15f2594c146811L

    const-string v2, "com/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch"

    const/16 v3, 0x12

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;IZLcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->$jacocoInit()[Z

    move-result-object v1

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput p2, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->mColor:I

    .line 35
    iput-object p4, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->mOnColorSelectedListener:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;

    const/4 v0, 0x0

    aput-boolean v3, v1, v0

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03001e

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    aput-boolean v3, v1, v3

    .line 38
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->mSwatchImage:Landroid/widget/ImageView;

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    .line 39
    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->mCheckmarkImage:Landroid/widget/ImageView;

    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    .line 40
    invoke-virtual {p0, p2}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->setColor(I)V

    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    .line 41
    invoke-direct {p0, p3}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->setChecked(Z)V

    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    .line 42
    invoke-virtual {p0, p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    return-void
.end method

.method private setChecked(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    if-eqz p1, :cond_0

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    .line 55
    iget-object v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->mCheckmarkImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    .line 59
    :goto_0
    const/16 v1, 0xd

    aput-boolean v3, v0, v1

    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->mCheckmarkImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->mOnColorSelectedListener:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;

    if-nez v1, :cond_0

    const/16 v1, 0xe

    aput-boolean v3, v0, v1

    .line 65
    :goto_0
    const/16 v1, 0x11

    aput-boolean v3, v0, v1

    return-void

    .line 63
    :cond_0
    const/16 v1, 0xf

    aput-boolean v3, v0, v1

    .line 64
    iget-object v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->mOnColorSelectedListener:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;

    iget v2, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->mColor:I

    invoke-interface {v1, v2}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;->onColorSelected(I)V

    const/16 v1, 0x10

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method protected setColor(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    new-array v1, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-boolean v5, v0, v3

    .line 48
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-boolean v5, v0, v2

    .line 50
    iget-object v2, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch;->mSwatchImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/moonpi/swiftnotes/ColorPicker/ColorStateDrawable;

    invoke-direct {v3, v1, p1}, Lcom/moonpi/swiftnotes/ColorPicker/ColorStateDrawable;-><init>([Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    const/16 v1, 0x9

    aput-boolean v5, v0, v1

    return-void
.end method
