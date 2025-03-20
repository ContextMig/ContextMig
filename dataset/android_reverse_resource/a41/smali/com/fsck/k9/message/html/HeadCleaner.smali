.class Lcom/fsck/k9/message/html/HeadCleaner;
.super Ljava/lang/Object;
.source "HeadCleaner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;
    }
.end annotation


# static fields
.field private static final ALLOWED_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "style"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "meta"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/message/html/HeadCleaner;->ALLOWED_TAGS:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/fsck/k9/message/html/HeadCleaner;->ALLOWED_TAGS:Ljava/util/List;

    return-object v0
.end method

.method private copySafeNodes(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 2
    .param p1, "source"    # Lorg/jsoup/nodes/Element;
    .param p2, "destination"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 29
    new-instance v0, Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;

    invoke-direct {v0, p1, p2}, Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;-><init>(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 30
    .local v0, "cleaningVisitor":Lcom/fsck/k9/message/html/HeadCleaner$CleaningVisitor;
    new-instance v1, Lorg/jsoup/select/NodeTraversor;

    invoke-direct {v1, v0}, Lorg/jsoup/select/NodeTraversor;-><init>(Lorg/jsoup/select/NodeVisitor;)V

    .line 31
    .local v1, "traversor":Lorg/jsoup/select/NodeTraversor;
    invoke-virtual {v1, p1}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/nodes/Node;)V

    .line 32
    return-void
.end method


# virtual methods
.method public clean(Lorg/jsoup/nodes/Document;Lorg/jsoup/nodes/Document;)V
    .locals 2
    .param p1, "dirtyDocument"    # Lorg/jsoup/nodes/Document;
    .param p2, "cleanedDocument"    # Lorg/jsoup/nodes/Document;

    .prologue
    .line 25
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/message/html/HeadCleaner;->copySafeNodes(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 26
    return-void
.end method
