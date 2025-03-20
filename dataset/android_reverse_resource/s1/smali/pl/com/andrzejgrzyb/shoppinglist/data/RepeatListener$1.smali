.class Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener$1;
.super Ljava/lang/Object;
.source "RepeatListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6df4e7489bd74e55L    # -9.37016366200843E-222

    const-string v2, "pl/com/andrzejgrzyb/shoppinglist/data/RepeatListener$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener$1;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    iput-object p1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener$1;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener$1;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener$1;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;

    invoke-static {v1}, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->access$100(Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener$1;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;

    invoke-static {v2}, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->access$000(Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    aput-boolean v4, v0, v4

    .line 33
    iget-object v1, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener$1;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;

    invoke-static {v1}, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->access$300(Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener$1;->this$0:Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;

    invoke-static {v2}, Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;->access$200(Lpl/com/andrzejgrzyb/shoppinglist/data/RepeatListener;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 34
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    return-void
.end method
