.class Lde/baumann/browser/View/SwitcherPanel$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SwitcherPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/baumann/browser/View/SwitcherPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutParams"
.end annotation


# static fields
.field private static final ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 101
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010181

    aput v2, v0, v1

    sput-object v0, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;->ATTRS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 105
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    sget-object v0, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;->ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lde/baumann/browser/View/SwitcherPanel$1;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup$LayoutParams;Lde/baumann/browser/View/SwitcherPanel$1;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;Lde/baumann/browser/View/SwitcherPanel$1;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method synthetic constructor <init>(Lde/baumann/browser/View/SwitcherPanel$1;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lde/baumann/browser/View/SwitcherPanel$LayoutParams;-><init>()V

    return-void
.end method
