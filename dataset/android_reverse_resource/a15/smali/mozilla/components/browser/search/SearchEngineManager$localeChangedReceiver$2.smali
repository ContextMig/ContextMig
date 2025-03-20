.class final Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchEngineManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmozilla/components/browser/search/SearchEngineManager;-><init>(Ljava/util/List;)V
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
        "Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmozilla/components/browser/search/SearchEngineManager;


# direct methods
.method constructor <init>(Lmozilla/components/browser/search/SearchEngineManager;)V
    .locals 1

    iput-object p1, p0, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2;->this$0:Lmozilla/components/browser/search/SearchEngineManager;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2;->invoke()Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;

    invoke-direct {v0, p0}, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;-><init>(Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2;)V

    .line 101
    return-object v0
.end method
