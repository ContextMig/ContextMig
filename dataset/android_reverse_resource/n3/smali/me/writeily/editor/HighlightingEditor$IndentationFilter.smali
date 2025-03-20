.class Lme/writeily/editor/HighlightingEditor$IndentationFilter;
.super Ljava/lang/Object;
.source "HighlightingEditor.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/writeily/editor/HighlightingEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndentationFilter"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/editor/HighlightingEditor;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/editor/HighlightingEditor$IndentationFilter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2847bafa4a8b410bL    # -3.7354361444837084E114

    const-string v2, "me/writeily/editor/HighlightingEditor$IndentationFilter"

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/editor/HighlightingEditor$IndentationFilter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lme/writeily/editor/HighlightingEditor;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/editor/HighlightingEditor$IndentationFilter;->$jacocoInit()[Z

    move-result-object v0

    .line 120
    iput-object p1, p0, Lme/writeily/editor/HighlightingEditor$IndentationFilter;->this$0:Lme/writeily/editor/HighlightingEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lme/writeily/editor/HighlightingEditor;Lme/writeily/editor/HighlightingEditor$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/editor/HighlightingEditor$IndentationFilter;->$jacocoInit()[Z

    move-result-object v0

    .line 120
    invoke-direct {p0, p1}, Lme/writeily/editor/HighlightingEditor$IndentationFilter;-><init>(Lme/writeily/editor/HighlightingEditor;)V

    const/16 v1, 0x20

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private addBulletPointIfNeeded(C)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/editor/HighlightingEditor$IndentationFilter;->$jacocoInit()[Z

    move-result-object v1

    .line 189
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1d

    aput-boolean v3, v1, v2

    :goto_0
    const/16 v2, 0x1f

    aput-boolean v3, v1, v2

    return-object v0

    :cond_0
    const-string v0, ""

    const/16 v2, 0x1e

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private autoIndent(Ljava/lang/CharSequence;Landroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/editor/HighlightingEditor$IndentationFilter;->$jacocoInit()[Z

    move-result-object v0

    .line 149
    invoke-direct {p0, p2, p3}, Lme/writeily/editor/HighlightingEditor$IndentationFilter;->findLineBreakPosition(Landroid/text/Spanned;I)I

    move-result v1

    const/16 v2, 0xc

    aput-boolean v3, v0, v2

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2, p4, v1}, Lme/writeily/editor/HighlightingEditor$IndentationFilter;->createIndentForNextLine(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private createIndentForNextLine(Landroid/text/Spanned;II)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/editor/HighlightingEditor$IndentationFilter;->$jacocoInit()[Z

    move-result-object v4

    .line 168
    const/4 v3, -0x1

    if-le p3, v3, :cond_3

    .line 171
    add-int/lit8 v2, p3, 0x1

    .local v2, "istart":I
    const/16 v3, 0x14

    aput-boolean v6, v4, v3

    move v1, v2

    .line 172
    :goto_0
    if-lt v1, p2, :cond_0

    const/16 v3, 0x15

    aput-boolean v6, v4, v3

    .line 182
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v2, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lme/writeily/editor/HighlightingEditor$IndentationFilter;->addBulletPointIfNeeded(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1b

    aput-boolean v6, v4, v5

    .line 184
    :goto_2
    return-object v3

    .line 172
    :cond_0
    const/16 v3, 0x16

    aput-boolean v6, v4, v3

    .line 174
    invoke-interface {p1, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 176
    .local v0, "c":C
    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    const/16 v3, 0x17

    aput-boolean v6, v4, v3

    .line 173
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .local v1, "iend":I
    const/16 v3, 0x1a

    aput-boolean v6, v4, v3

    goto :goto_0

    .line 176
    .end local v1    # "iend":I
    :cond_1
    const/16 v3, 0x9

    if-ne v0, v3, :cond_2

    const/16 v3, 0x18

    aput-boolean v6, v4, v3

    goto :goto_3

    .line 178
    :cond_2
    const/16 v3, 0x19

    aput-boolean v6, v4, v3

    goto :goto_1

    .line 184
    .end local v0    # "c":C
    .end local v2    # "istart":I
    :cond_3
    const-string v3, ""

    const/16 v5, 0x1c

    aput-boolean v6, v4, v5

    goto :goto_2
.end method

.method private findLineBreakPosition(Landroid/text/Spanned;I)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/editor/HighlightingEditor$IndentationFilter;->$jacocoInit()[Z

    move-result-object v2

    .line 156
    add-int/lit8 v1, p2, -0x1

    const/16 v3, 0xe

    aput-boolean v4, v2, v3

    .line 158
    .local v0, "c":C
    .local v1, "istart":I
    :goto_0
    const/4 v3, -0x1

    if-gt v1, v3, :cond_0

    const/16 v3, 0xf

    aput-boolean v4, v2, v3

    .line 164
    .end local v1    # "istart":I
    :goto_1
    const/16 v3, 0x13

    aput-boolean v4, v2, v3

    return v1

    .line 158
    .restart local v1    # "istart":I
    :cond_0
    const/16 v3, 0x10

    aput-boolean v4, v2, v3

    .line 159
    invoke-interface {p1, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 161
    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    .line 162
    .end local v1    # "istart":I
    const/16 v3, 0x11

    aput-boolean v4, v2, v3

    goto :goto_1

    .line 158
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "istart":I
    const/16 v3, 0x12

    aput-boolean v4, v2, v3

    goto :goto_0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/editor/HighlightingEditor$IndentationFilter;->$jacocoInit()[Z

    move-result-object v1

    .line 130
    iget-object v2, p0, Lme/writeily/editor/HighlightingEditor$IndentationFilter;->this$0:Lme/writeily/editor/HighlightingEditor;

    invoke-static {v2}, Lme/writeily/editor/HighlightingEditor;->access$400(Lme/writeily/editor/HighlightingEditor;)Z

    move-result v2

    if-nez v2, :cond_0

    aput-boolean v3, v1, v3

    .line 144
    .local v0, "c":C
    :goto_0
    const/16 v2, 0xb

    aput-boolean v3, v1, v2

    :goto_1
    return-object p1

    .line 130
    .end local v0    # "c":C
    :cond_0
    sub-int v2, p3, p2

    if-eq v2, v3, :cond_1

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    .line 132
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt p2, v2, :cond_2

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    .line 133
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    if-lt p5, v2, :cond_3

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    .line 134
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 136
    .restart local v0    # "c":C
    if-eq v0, v4, :cond_4

    const/16 v2, 0x8

    aput-boolean v3, v1, v2

    goto :goto_0

    :cond_4
    const/16 v2, 0x9

    aput-boolean v3, v1, v2

    .line 137
    invoke-direct {p0, p1, p4, p5, p6}, Lme/writeily/editor/HighlightingEditor$IndentationFilter;->autoIndent(Ljava/lang/CharSequence;Landroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    aput-boolean v3, v1, v4

    goto :goto_1
.end method
