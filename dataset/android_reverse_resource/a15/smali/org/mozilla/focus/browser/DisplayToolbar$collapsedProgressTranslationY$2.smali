.class final Lorg/mozilla/focus/browser/DisplayToolbar$collapsedProgressTranslationY$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DisplayToolbar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/browser/DisplayToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/browser/DisplayToolbar;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/browser/DisplayToolbar;)V
    .locals 1

    iput-object p1, p0, Lorg/mozilla/focus/browser/DisplayToolbar$collapsedProgressTranslationY$2;->this$0:Lorg/mozilla/focus/browser/DisplayToolbar;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()F
    .locals 4

    .prologue
    .line 21
    const/4 v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    iget-object v2, p0, Lorg/mozilla/focus/browser/DisplayToolbar$collapsedProgressTranslationY$2;->this$0:Lorg/mozilla/focus/browser/DisplayToolbar;

    invoke-virtual {v2}, Lorg/mozilla/focus/browser/DisplayToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 22
    return v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lorg/mozilla/focus/browser/DisplayToolbar$collapsedProgressTranslationY$2;->invoke()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
