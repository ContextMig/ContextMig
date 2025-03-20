.class final Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;
.super Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.source "AssetsSearchEngineProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->loadSearchEnginesFromList(Landroid/content/Context;Ljava/util/List;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field synthetic data:Ljava/lang/Object;

.field synthetic exception:Ljava/lang/Throwable;

.field final synthetic this$0:Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;


# direct methods
.method constructor <init>(Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 1

    iput-object p1, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->this$0:Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;-><init>(ILkotlin/coroutines/experimental/Continuation;)V

    return-void
.end method


# virtual methods
.method public final doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x0

    iput-object p1, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->data:Ljava/lang/Object;

    iput-object p2, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->exception:Ljava/lang/Throwable;

    iget v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    iget-object v0, p0, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider$loadSearchEnginesFromList$1;->this$0:Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;

    invoke-virtual {v0, v2, v2, p0}, Lmozilla/components/browser/search/provider/AssetsSearchEngineProvider;->loadSearchEnginesFromList(Landroid/content/Context;Ljava/util/List;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final synthetic getLabel()I
    .locals 1

    iget v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    return v0
.end method

.method final synthetic setLabel(I)V
    .locals 0

    iput p1, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    return-void
.end method
