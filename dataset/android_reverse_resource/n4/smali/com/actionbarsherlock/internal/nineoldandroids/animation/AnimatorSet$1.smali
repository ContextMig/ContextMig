.class Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$1;
.super Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field canceled:Z

.field final synthetic this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

.field final synthetic val$nodesToStart:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "this$0"    # Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$1;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    iput-object p2, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$1;->val$nodesToStart:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    .line 508
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$1;->canceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    .prologue
    .line 510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$1;->canceled:Z

    .line 511
    return-void
.end method

.method public onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 5
    .param p1, "anim"    # Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    .prologue
    .line 513
    iget-boolean v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$1;->canceled:Z

    if-nez v3, :cond_0

    .line 514
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$1;->val$nodesToStart:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 515
    .local v2, "numNodes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 516
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$1;->val$nodesToStart:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;

    .line 517
    .local v1, "node":Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    iget-object v3, v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->start()V

    .line 518
    iget-object v3, p0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$1;->this$0:Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-static {v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->access$000(Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v1, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;->animation:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    .end local v0    # "i":I
    .end local v1    # "node":Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Node;
    .end local v2    # "numNodes":I
    :cond_0
    return-void
.end method
