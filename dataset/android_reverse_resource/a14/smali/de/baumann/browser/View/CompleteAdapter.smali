.class public Lde/baumann/browser/View/CompleteAdapter;
.super Landroid/widget/BaseAdapter;
.source "CompleteAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/baumann/browser/View/CompleteAdapter$Holder;,
        Lde/baumann/browser/View/CompleteAdapter$CompleteItem;,
        Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final filter:Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;

.field private final layoutResId:I

.field private final originalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lde/baumann/browser/View/CompleteAdapter$CompleteItem;",
            ">;"
        }
    .end annotation
.end field

.field private final resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lde/baumann/browser/View/CompleteAdapter$CompleteItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lde/baumann/browser/Database/Record;",
            ">;)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 115
    new-instance v0, Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;-><init>(Lde/baumann/browser/View/CompleteAdapter;Lde/baumann/browser/View/CompleteAdapter$1;)V

    iput-object v0, p0, Lde/baumann/browser/View/CompleteAdapter;->filter:Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;

    .line 118
    iput-object p1, p0, Lde/baumann/browser/View/CompleteAdapter;->context:Landroid/content/Context;

    const p1, 0x7f0b0038

    .line 119
    iput p1, p0, Lde/baumann/browser/View/CompleteAdapter;->layoutResId:I

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lde/baumann/browser/View/CompleteAdapter;->originalList:Ljava/util/List;

    .line 121
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lde/baumann/browser/View/CompleteAdapter;->resultList:Ljava/util/List;

    .line 122
    invoke-direct {p0, p2}, Lde/baumann/browser/View/CompleteAdapter;->deDup(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lde/baumann/browser/View/CompleteAdapter;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lde/baumann/browser/View/CompleteAdapter;->resultList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lde/baumann/browser/View/CompleteAdapter;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lde/baumann/browser/View/CompleteAdapter;->originalList:Ljava/util/List;

    return-object p0
.end method

.method private deDup(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lde/baumann/browser/Database/Record;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/baumann/browser/Database/Record;

    .line 127
    invoke-virtual {v0}, Lde/baumann/browser/Database/Record;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0}, Lde/baumann/browser/Database/Record;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-virtual {v0}, Lde/baumann/browser/Database/Record;->getURL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v0}, Lde/baumann/browser/Database/Record;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lde/baumann/browser/View/CompleteAdapter;->originalList:Ljava/util/List;

    new-instance v2, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;

    invoke-virtual {v0}, Lde/baumann/browser/Database/Record;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lde/baumann/browser/Database/Record;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v3, v0}, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;-><init>(Lde/baumann/browser/View/CompleteAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_1
    new-instance p1, Ljava/util/HashSet;

    iget-object v0, p0, Lde/baumann/browser/View/CompleteAdapter;->originalList:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 136
    iget-object v0, p0, Lde/baumann/browser/View/CompleteAdapter;->originalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 137
    iget-object v0, p0, Lde/baumann/browser/View/CompleteAdapter;->originalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 142
    iget-object v0, p0, Lde/baumann/browser/View/CompleteAdapter;->resultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 147
    iget-object v0, p0, Lde/baumann/browser/View/CompleteAdapter;->filter:Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 152
    iget-object v0, p0, Lde/baumann/browser/View/CompleteAdapter;->resultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 166
    iget-object p2, p0, Lde/baumann/browser/View/CompleteAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget p3, p0, Lde/baumann/browser/View/CompleteAdapter;->layoutResId:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 167
    new-instance p3, Lde/baumann/browser/View/CompleteAdapter$Holder;

    invoke-direct {p3, v1}, Lde/baumann/browser/View/CompleteAdapter$Holder;-><init>(Lde/baumann/browser/View/CompleteAdapter$1;)V

    const v0, 0x7f0900bf

    .line 168
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lde/baumann/browser/View/CompleteAdapter$Holder;->titleView:Landroid/widget/TextView;

    const v0, 0x7f0900c0

    .line 169
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lde/baumann/browser/View/CompleteAdapter$Holder;->urlView:Landroid/widget/TextView;

    .line 170
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lde/baumann/browser/View/CompleteAdapter$Holder;

    .line 175
    :goto_0
    iget-object v0, p0, Lde/baumann/browser/View/CompleteAdapter;->resultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;

    .line 176
    iget-object v0, p3, Lde/baumann/browser/View/CompleteAdapter$Holder;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {p1}, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->getURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    iget-object p3, p3, Lde/baumann/browser/View/CompleteAdapter$Holder;->urlView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->getURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 180
    :cond_1
    iget-object p3, p3, Lde/baumann/browser/View/CompleteAdapter$Holder;->urlView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->getURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object p2
.end method
