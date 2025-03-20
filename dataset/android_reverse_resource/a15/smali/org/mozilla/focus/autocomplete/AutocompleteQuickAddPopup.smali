.class public final Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;
.super Landroid/widget/PopupWindow;
.source "AutocompleteQuickAddPopup.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$Companion;


# instance fields
.field private onUrlAdded:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;->Companion:Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x2

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "url"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b001e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 25
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;->setContentView(Landroid/view/View;)V

    .line 27
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    const v2, 0x7f0900cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 30
    .local v0, "button":Landroid/widget/Button;
    new-instance v2, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1;

    invoke-direct {v2, p0, p1, p2}, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1;-><init>(Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;Landroid/content/Context;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;->setFocusable(Z)V

    .line 41
    invoke-virtual {p0, v5}, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;->setHeight(I)V

    .line 42
    invoke-virtual {p0, v5}, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;->setWidth(I)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;->setElevation(F)V

    return-void
.end method


# virtual methods
.method public final getOnUrlAdded()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;->onUrlAdded:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final setOnUrlAdded(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    iput-object p1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;->onUrlAdded:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final show(Landroid/view/View;)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    const/16 v0, -0xa

    const/4 v1, 0x6

    invoke-super {p0, p1, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 49
    return-void
.end method
