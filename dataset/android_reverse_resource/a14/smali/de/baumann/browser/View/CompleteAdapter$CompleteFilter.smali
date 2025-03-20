.class Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;
.super Landroid/widget/Filter;
.source "CompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/baumann/browser/View/CompleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompleteFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/View/CompleteAdapter;


# direct methods
.method private constructor <init>(Lde/baumann/browser/View/CompleteAdapter;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;->this$0:Lde/baumann/browser/View/CompleteAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/baumann/browser/View/CompleteAdapter;Lde/baumann/browser/View/CompleteAdapter$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;-><init>(Lde/baumann/browser/View/CompleteAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    return-object p1

    .line 30
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;->this$0:Lde/baumann/browser/View/CompleteAdapter;

    invoke-static {v0}, Lde/baumann/browser/View/CompleteAdapter;->access$000(Lde/baumann/browser/View/CompleteAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    iget-object v0, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;->this$0:Lde/baumann/browser/View/CompleteAdapter;

    invoke-static {v0}, Lde/baumann/browser/View/CompleteAdapter;->access$100(Lde/baumann/browser/View/CompleteAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;

    .line 32
    invoke-virtual {v1}, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    :cond_2
    invoke-virtual {v1}, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 34
    invoke-virtual {v1}, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->setIndex(I)V

    goto :goto_1

    .line 35
    :cond_3
    invoke-virtual {v1}, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 36
    invoke-virtual {v1}, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lde/baumann/browser/View/CompleteAdapter$CompleteItem;->setIndex(I)V

    .line 38
    :cond_4
    :goto_1
    iget-object v2, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;->this$0:Lde/baumann/browser/View/CompleteAdapter;

    invoke-static {v2}, Lde/baumann/browser/View/CompleteAdapter;->access$000(Lde/baumann/browser/View/CompleteAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_5
    iget-object p1, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;->this$0:Lde/baumann/browser/View/CompleteAdapter;

    invoke-static {p1}, Lde/baumann/browser/View/CompleteAdapter;->access$000(Lde/baumann/browser/View/CompleteAdapter;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lde/baumann/browser/View/CompleteAdapter$CompleteFilter$1;

    invoke-direct {v0, p0}, Lde/baumann/browser/View/CompleteAdapter$CompleteFilter$1;-><init>(Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 49
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 50
    iget-object v0, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;->this$0:Lde/baumann/browser/View/CompleteAdapter;

    invoke-static {v0}, Lde/baumann/browser/View/CompleteAdapter;->access$000(Lde/baumann/browser/View/CompleteAdapter;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;->this$0:Lde/baumann/browser/View/CompleteAdapter;

    invoke-static {v0}, Lde/baumann/browser/View/CompleteAdapter;->access$000(Lde/baumann/browser/View/CompleteAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Landroid/widget/Filter$FilterResults;->count:I

    return-object p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lde/baumann/browser/View/CompleteAdapter$CompleteFilter;->this$0:Lde/baumann/browser/View/CompleteAdapter;

    invoke-virtual {p1}, Lde/baumann/browser/View/CompleteAdapter;->notifyDataSetChanged()V

    return-void
.end method
