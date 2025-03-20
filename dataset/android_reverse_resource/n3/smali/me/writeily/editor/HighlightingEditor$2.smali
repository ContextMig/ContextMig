.class Lme/writeily/editor/HighlightingEditor$2;
.super Ljava/lang/Object;
.source "HighlightingEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/writeily/editor/HighlightingEditor;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/editor/HighlightingEditor;

.field final synthetic val$highlightingDelay:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/editor/HighlightingEditor$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x158b83b8b6188dc3L    # 6.856068911760903E-205

    const-string v2, "me/writeily/editor/HighlightingEditor$2"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/editor/HighlightingEditor$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/editor/HighlightingEditor;I)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/editor/HighlightingEditor$2;->$jacocoInit()[Z

    move-result-object v0

    .line 70
    iput-object p1, p0, Lme/writeily/editor/HighlightingEditor$2;->this$0:Lme/writeily/editor/HighlightingEditor;

    iput p2, p0, Lme/writeily/editor/HighlightingEditor$2;->val$highlightingDelay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/editor/HighlightingEditor$2;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    iget-object v1, p0, Lme/writeily/editor/HighlightingEditor$2;->this$0:Lme/writeily/editor/HighlightingEditor;

    invoke-static {v1}, Lme/writeily/editor/HighlightingEditor;->access$300(Lme/writeily/editor/HighlightingEditor;)V

    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    .line 91
    iget-object v1, p0, Lme/writeily/editor/HighlightingEditor$2;->this$0:Lme/writeily/editor/HighlightingEditor;

    invoke-static {v1}, Lme/writeily/editor/HighlightingEditor;->access$400(Lme/writeily/editor/HighlightingEditor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    const/4 v1, 0x4

    aput-boolean v6, v0, v1

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lme/writeily/editor/HighlightingEditor$2;->this$0:Lme/writeily/editor/HighlightingEditor;

    invoke-static {v1}, Lme/writeily/editor/HighlightingEditor;->access$600(Lme/writeily/editor/HighlightingEditor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lme/writeily/editor/HighlightingEditor$2;->this$0:Lme/writeily/editor/HighlightingEditor;

    const/4 v3, 0x5

    aput-boolean v6, v0, v3

    .line 95
    invoke-static {v2}, Lme/writeily/editor/HighlightingEditor;->access$500(Lme/writeily/editor/HighlightingEditor;)Ljava/lang/Runnable;

    move-result-object v2

    iget v3, p0, Lme/writeily/editor/HighlightingEditor$2;->val$highlightingDelay:I

    int-to-long v4, v3

    const/4 v3, 0x6

    aput-boolean v6, v0, v3

    .line 94
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    const/4 v1, 0x7

    aput-boolean v6, v0, v1

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/editor/HighlightingEditor$2;->$jacocoInit()[Z

    move-result-object v0

    .line 85
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lme/writeily/editor/HighlightingEditor$2;->$jacocoInit()[Z

    move-result-object v0

    .line 77
    aput-boolean v1, v0, v1

    return-void
.end method
