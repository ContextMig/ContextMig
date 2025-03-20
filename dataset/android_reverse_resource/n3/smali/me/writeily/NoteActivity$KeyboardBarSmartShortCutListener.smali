.class Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;
.super Ljava/lang/Object;
.source "NoteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/writeily/NoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardBarSmartShortCutListener"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/NoteActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6b9251d69f145a0dL    # -2.821250196076388E-210

    const-string v2, "me/writeily/NoteActivity$KeyboardBarSmartShortCutListener"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lme/writeily/NoteActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;->$jacocoInit()[Z

    move-result-object v0

    .line 352
    iput-object p1, p0, Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;->this$0:Lme/writeily/NoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lme/writeily/NoteActivity;Lme/writeily/NoteActivity$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;->$jacocoInit()[Z

    move-result-object v0

    .line 352
    invoke-direct {p0, p1}, Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;-><init>(Lme/writeily/NoteActivity;)V

    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;->$jacocoInit()[Z

    move-result-object v0

    .line 355
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    aput-boolean v9, v0, v9

    .line 356
    iget-object v2, p0, Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;->this$0:Lme/writeily/NoteActivity;

    invoke-static {v2}, Lme/writeily/NoteActivity;->access$200(Lme/writeily/NoteActivity;)Lme/writeily/editor/HighlightingEditor;

    move-result-object v2

    invoke-virtual {v2}, Lme/writeily/editor/HighlightingEditor;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    aput-boolean v9, v0, v2

    .line 357
    iget-object v2, p0, Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;->this$0:Lme/writeily/NoteActivity;

    invoke-static {v2}, Lme/writeily/NoteActivity;->access$200(Lme/writeily/NoteActivity;)Lme/writeily/editor/HighlightingEditor;

    move-result-object v2

    invoke-virtual {v2}, Lme/writeily/editor/HighlightingEditor;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;->this$0:Lme/writeily/NoteActivity;

    invoke-static {v3}, Lme/writeily/NoteActivity;->access$200(Lme/writeily/NoteActivity;)Lme/writeily/editor/HighlightingEditor;

    move-result-object v3

    invoke-virtual {v3}, Lme/writeily/editor/HighlightingEditor;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;->this$0:Lme/writeily/NoteActivity;

    const/4 v5, 0x3

    aput-boolean v9, v0, v5

    .line 358
    invoke-static {v4}, Lme/writeily/NoteActivity;->access$200(Lme/writeily/NoteActivity;)Lme/writeily/editor/HighlightingEditor;

    move-result-object v4

    invoke-virtual {v4}, Lme/writeily/editor/HighlightingEditor;->getSelectionEnd()I

    move-result v4

    const/4 v5, 0x4

    aput-boolean v9, v0, v5

    .line 357
    invoke-interface {v2, v3, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x5

    aput-boolean v9, v0, v3

    .line 359
    iget-object v3, p0, Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;->this$0:Lme/writeily/NoteActivity;

    invoke-static {v3}, Lme/writeily/NoteActivity;->access$200(Lme/writeily/NoteActivity;)Lme/writeily/editor/HighlightingEditor;

    move-result-object v3

    invoke-virtual {v3}, Lme/writeily/editor/HighlightingEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    iget-object v4, p0, Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;->this$0:Lme/writeily/NoteActivity;

    invoke-static {v4}, Lme/writeily/NoteActivity;->access$200(Lme/writeily/NoteActivity;)Lme/writeily/editor/HighlightingEditor;

    move-result-object v4

    invoke-virtual {v4}, Lme/writeily/editor/HighlightingEditor;->getSelectionStart()I

    move-result v4

    iget-object v5, p0, Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;->this$0:Lme/writeily/NoteActivity;

    invoke-static {v5}, Lme/writeily/NoteActivity;->access$200(Lme/writeily/NoteActivity;)Lme/writeily/editor/HighlightingEditor;

    move-result-object v5

    invoke-virtual {v5}, Lme/writeily/editor/HighlightingEditor;->getSelectionEnd()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x6

    aput-boolean v9, v0, v8

    .line 360
    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-boolean v9, v0, v2

    .line 359
    invoke-interface {v3, v4, v5, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 361
    const/16 v1, 0x8

    aput-boolean v9, v0, v1

    .line 365
    :goto_0
    const/16 v1, 0xb

    aput-boolean v9, v0, v1

    return-void

    .line 362
    :cond_0
    iget-object v2, p0, Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;->this$0:Lme/writeily/NoteActivity;

    invoke-static {v2}, Lme/writeily/NoteActivity;->access$200(Lme/writeily/NoteActivity;)Lme/writeily/editor/HighlightingEditor;

    move-result-object v2

    invoke-virtual {v2}, Lme/writeily/editor/HighlightingEditor;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;->this$0:Lme/writeily/NoteActivity;

    invoke-static {v3}, Lme/writeily/NoteActivity;->access$200(Lme/writeily/NoteActivity;)Lme/writeily/editor/HighlightingEditor;

    move-result-object v3

    invoke-virtual {v3}, Lme/writeily/editor/HighlightingEditor;->getSelectionStart()I

    move-result v3

    invoke-interface {v2, v3, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    const/16 v1, 0x9

    aput-boolean v9, v0, v1

    .line 363
    iget-object v1, p0, Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;->this$0:Lme/writeily/NoteActivity;

    invoke-static {v1}, Lme/writeily/NoteActivity;->access$200(Lme/writeily/NoteActivity;)Lme/writeily/editor/HighlightingEditor;

    move-result-object v1

    iget-object v2, p0, Lme/writeily/NoteActivity$KeyboardBarSmartShortCutListener;->this$0:Lme/writeily/NoteActivity;

    invoke-static {v2}, Lme/writeily/NoteActivity;->access$200(Lme/writeily/NoteActivity;)Lme/writeily/editor/HighlightingEditor;

    move-result-object v2

    invoke-virtual {v2}, Lme/writeily/editor/HighlightingEditor;->getSelectionStart()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lme/writeily/editor/HighlightingEditor;->setSelection(I)V

    const/16 v1, 0xa

    aput-boolean v9, v0, v1

    goto :goto_0
.end method
