.class Lme/writeily/editor/HighlightingEditor$1;
.super Ljava/lang/Object;
.source "HighlightingEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/writeily/editor/HighlightingEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/editor/HighlightingEditor;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/editor/HighlightingEditor$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4571e6dfadf79266L    # -1.2156545739552868E-26

    const-string v2, "me/writeily/editor/HighlightingEditor$1"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/editor/HighlightingEditor$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/editor/HighlightingEditor;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/editor/HighlightingEditor$1;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    iput-object p1, p0, Lme/writeily/editor/HighlightingEditor$1;->this$0:Lme/writeily/editor/HighlightingEditor;

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

    invoke-static {}, Lme/writeily/editor/HighlightingEditor$1;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    iget-object v1, p0, Lme/writeily/editor/HighlightingEditor$1;->this$0:Lme/writeily/editor/HighlightingEditor;

    invoke-virtual {v1}, Lme/writeily/editor/HighlightingEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    aput-boolean v4, v0, v4

    .line 35
    iget-object v2, p0, Lme/writeily/editor/HighlightingEditor$1;->this$0:Lme/writeily/editor/HighlightingEditor;

    invoke-static {v2}, Lme/writeily/editor/HighlightingEditor;->access$000(Lme/writeily/editor/HighlightingEditor;)Lme/writeily/editor/HighlightingEditor$OnTextChangedListener;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 38
    :goto_0
    iget-object v2, p0, Lme/writeily/editor/HighlightingEditor$1;->this$0:Lme/writeily/editor/HighlightingEditor;

    invoke-static {v2, v1}, Lme/writeily/editor/HighlightingEditor;->access$100(Lme/writeily/editor/HighlightingEditor;Landroid/text/Editable;)V

    .line 39
    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    return-void

    .line 35
    :cond_0
    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    .line 36
    iget-object v2, p0, Lme/writeily/editor/HighlightingEditor$1;->this$0:Lme/writeily/editor/HighlightingEditor;

    invoke-static {v2}, Lme/writeily/editor/HighlightingEditor;->access$000(Lme/writeily/editor/HighlightingEditor;)Lme/writeily/editor/HighlightingEditor$OnTextChangedListener;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lme/writeily/editor/HighlightingEditor$OnTextChangedListener;->onTextChanged(Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    goto :goto_0
.end method
