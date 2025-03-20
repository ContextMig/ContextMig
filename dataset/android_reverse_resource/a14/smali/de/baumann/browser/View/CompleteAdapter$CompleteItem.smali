.class Lde/baumann/browser/View/CompleteAdapter$CompleteItem;
.super Ljava/lang/Object;
.source "CompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/baumann/browser/View/CompleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompleteItem"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lde/baumann/browser/View/CompleteAdapter;

.field private final title:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/baumann/browser/View/CompleteAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->this$0:Lde/baumann/browser/View/CompleteAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7fffffff

    .line 73
    iput p1, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->index:I

    .line 82
    iput-object p2, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->title:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 88
    instance-of v0, p1, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 92
    :cond_0
    check-cast p1, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;

    .line 93
    invoke-virtual {p1}, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->getURL()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method getIndex()I
    .locals 1

    .line 75
    iget v0, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->index:I

    return v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method getURL()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 98
    iget-object v0, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    and-int/2addr v0, v1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method setIndex(I)V
    .locals 0

    .line 78
    iput p1, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->index:I

    return-void
.end method
