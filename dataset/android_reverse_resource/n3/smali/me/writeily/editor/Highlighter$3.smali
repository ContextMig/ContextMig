.class Lme/writeily/editor/Highlighter$3;
.super Ljava/lang/Object;
.source "Highlighter.java"

# interfaces
.implements Lme/writeily/editor/SpanCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/writeily/editor/Highlighter;->createStyleSpanForMatches(Landroid/text/Editable;Ljava/util/regex/Pattern;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/editor/Highlighter;

.field final synthetic val$style:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/editor/Highlighter$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x53f4ef4ae943d72L

    const-string v2, "me/writeily/editor/Highlighter$3"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/editor/Highlighter$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/editor/Highlighter;I)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/editor/Highlighter$3;->$jacocoInit()[Z

    move-result-object v0

    .line 81
    iput-object p1, p0, Lme/writeily/editor/Highlighter$3;->this$0:Lme/writeily/editor/Highlighter;

    iput p2, p0, Lme/writeily/editor/Highlighter$3;->val$style:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public create(Ljava/util/regex/Matcher;)Landroid/text/ParcelableSpan;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/editor/Highlighter$3;->$jacocoInit()[Z

    move-result-object v0

    .line 84
    new-instance v1, Landroid/text/style/StyleSpan;

    iget v2, p0, Lme/writeily/editor/Highlighter$3;->val$style:I

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-boolean v3, v0, v3

    return-object v1
.end method
