.class final Lrx/internal/operators/OperatorSingle$ParentSubscriber;
.super Lrx/Subscriber;
.source "OperatorSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParentSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final hasDefaultValue:Z

.field private hasTooManyElements:Z

.field private isNonEmpty:Z

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Subscriber;ZLjava/lang/Object;)V
    .locals 2
    .param p2, "hasDefaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;ZTT;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/OperatorSingle$ParentSubscriber;, "Lrx/internal/operators/OperatorSingle$ParentSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 84
    iput-object p1, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->child:Lrx/Subscriber;

    .line 85
    iput-boolean p2, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->hasDefaultValue:Z

    .line 86
    iput-object p3, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->defaultValue:Ljava/lang/Object;

    .line 87
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->request(J)V

    .line 88
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 107
    .local p0, "this":Lrx/internal/operators/OperatorSingle$ParentSubscriber;, "Lrx/internal/operators/OperatorSingle$ParentSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->hasTooManyElements:Z

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->isNonEmpty:Z

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/producers/SingleProducer;

    iget-object v2, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->child:Lrx/Subscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->value:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lrx/internal/producers/SingleProducer;-><init>(Lrx/Subscriber;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-boolean v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->hasDefaultValue:Z

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/producers/SingleProducer;

    iget-object v2, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->child:Lrx/Subscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->defaultValue:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lrx/internal/producers/SingleProducer;-><init>(Lrx/Subscriber;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->child:Lrx/Subscriber;

    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Sequence contains no elements"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 124
    .local p0, "this":Lrx/internal/operators/OperatorSingle$ParentSubscriber;, "Lrx/internal/operators/OperatorSingle$ParentSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->hasTooManyElements:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p1}, Lrx/internal/util/RxJavaPluginUtils;->handleException(Ljava/lang/Throwable;)V

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorSingle$ParentSubscriber;, "Lrx/internal/operators/OperatorSingle$ParentSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    .line 92
    iget-boolean v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->hasTooManyElements:Z

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->isNonEmpty:Z

    if-eqz v0, :cond_1

    .line 96
    iput-boolean v1, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->hasTooManyElements:Z

    .line 97
    iget-object v0, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->child:Lrx/Subscriber;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Sequence contains too many elements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 98
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->unsubscribe()V

    goto :goto_0

    .line 100
    :cond_1
    iput-object p1, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->value:Ljava/lang/Object;

    .line 101
    iput-boolean v1, p0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;->isNonEmpty:Z

    goto :goto_0
.end method
