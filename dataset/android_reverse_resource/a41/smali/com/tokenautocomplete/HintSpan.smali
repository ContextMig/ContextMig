.class public Lcom/tokenautocomplete/HintSpan;
.super Landroid/text/style/TextAppearanceSpan;
.source "HintSpan.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "family"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "size"    # I
    .param p4, "color"    # Landroid/content/res/ColorStateList;
    .param p5, "linkColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 14
    invoke-direct/range {p0 .. p5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 15
    return-void
.end method
