.class Lcom/roomorama/caldroid/CaldroidFragment$2;
.super Ljava/lang/Object;
.source "CaldroidFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roomorama/caldroid/CaldroidFragment;->getDateItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roomorama/caldroid/CaldroidFragment;


# direct methods
.method constructor <init>(Lcom/roomorama/caldroid/CaldroidFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/roomorama/caldroid/CaldroidFragment;

    .prologue
    .line 999
    iput-object p1, p0, Lcom/roomorama/caldroid/CaldroidFragment$2;->this$0:Lcom/roomorama/caldroid/CaldroidFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 1004
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment$2;->this$0:Lcom/roomorama/caldroid/CaldroidFragment;

    iget-object v2, v2, Lcom/roomorama/caldroid/CaldroidFragment;->dateInMonthsList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhirondelle/date4j/DateTime;

    .line 1006
    .local v1, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment$2;->this$0:Lcom/roomorama/caldroid/CaldroidFragment;

    invoke-static {v2}, Lcom/roomorama/caldroid/CaldroidFragment;->access$000(Lcom/roomorama/caldroid/CaldroidFragment;)Lcom/roomorama/caldroid/CaldroidListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1007
    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment$2;->this$0:Lcom/roomorama/caldroid/CaldroidFragment;

    iget-boolean v2, v2, Lcom/roomorama/caldroid/CaldroidFragment;->enableClickOnDisabledDates:Z

    if-nez v2, :cond_3

    .line 1008
    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment$2;->this$0:Lcom/roomorama/caldroid/CaldroidFragment;

    iget-object v2, v2, Lcom/roomorama/caldroid/CaldroidFragment;->minDateTime:Lhirondelle/date4j/DateTime;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment$2;->this$0:Lcom/roomorama/caldroid/CaldroidFragment;

    iget-object v2, v2, Lcom/roomorama/caldroid/CaldroidFragment;->minDateTime:Lhirondelle/date4j/DateTime;

    .line 1009
    invoke-virtual {v1, v2}, Lhirondelle/date4j/DateTime;->lt(Lhirondelle/date4j/DateTime;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment$2;->this$0:Lcom/roomorama/caldroid/CaldroidFragment;

    iget-object v2, v2, Lcom/roomorama/caldroid/CaldroidFragment;->maxDateTime:Lhirondelle/date4j/DateTime;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment$2;->this$0:Lcom/roomorama/caldroid/CaldroidFragment;

    iget-object v2, v2, Lcom/roomorama/caldroid/CaldroidFragment;->maxDateTime:Lhirondelle/date4j/DateTime;

    .line 1011
    invoke-virtual {v1, v2}, Lhirondelle/date4j/DateTime;->gt(Lhirondelle/date4j/DateTime;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment$2;->this$0:Lcom/roomorama/caldroid/CaldroidFragment;

    iget-object v2, v2, Lcom/roomorama/caldroid/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment$2;->this$0:Lcom/roomorama/caldroid/CaldroidFragment;

    iget-object v2, v2, Lcom/roomorama/caldroid/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    .line 1013
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 1014
    :cond_2
    const/4 v2, 0x0

    .line 1022
    :goto_0
    return v2

    .line 1018
    :cond_3
    invoke-static {v1}, Lcom/roomorama/caldroid/CalendarHelper;->convertDateTimeToDate(Lhirondelle/date4j/DateTime;)Ljava/util/Date;

    move-result-object v0

    .line 1019
    .local v0, "date":Ljava/util/Date;
    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment$2;->this$0:Lcom/roomorama/caldroid/CaldroidFragment;

    invoke-static {v2}, Lcom/roomorama/caldroid/CaldroidFragment;->access$000(Lcom/roomorama/caldroid/CaldroidFragment;)Lcom/roomorama/caldroid/CaldroidListener;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/roomorama/caldroid/CaldroidListener;->onLongClickDate(Ljava/util/Date;Landroid/view/View;)V

    .line 1022
    .end local v0    # "date":Ljava/util/Date;
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method
