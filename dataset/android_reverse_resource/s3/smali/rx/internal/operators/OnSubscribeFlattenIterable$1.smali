.class Lrx/internal/operators/OnSubscribeFlattenIterable$1;
.super Ljava/lang/Object;
.source "OnSubscribeFlattenIterable.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeFlattenIterable;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeFlattenIterable;

.field final synthetic val$parent:Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeFlattenIterable;Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;)V
    .locals 0

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$1;, "Lrx/internal/operators/OnSubscribeFlattenIterable.1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$1;->this$0:Lrx/internal/operators/OnSubscribeFlattenIterable;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$1;->val$parent:Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$1;, "Lrx/internal/operators/OnSubscribeFlattenIterable.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$1;->val$parent:Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->requestMore(J)V

    .line 62
    return-void
.end method
