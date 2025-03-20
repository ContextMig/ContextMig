.class final Lorg/mozilla/focus/fragment/UrlInputFragment$onViewCreated$4;
.super Lkotlin/jvm/internal/FunctionReference;
.source "UrlInputFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/UrlInputFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/mozilla/focus/fragment/UrlInputFragment;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "onCommit"

    return-object v0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lorg/mozilla/focus/fragment/UrlInputFragment;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "onCommit()V"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/UrlInputFragment$onViewCreated$4;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$onViewCreated$4;->receiver:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/focus/fragment/UrlInputFragment;

    .line 203
    invoke-static {v0}, Lorg/mozilla/focus/fragment/UrlInputFragment;->access$onCommit(Lorg/mozilla/focus/fragment/UrlInputFragment;)V

    return-void
.end method
