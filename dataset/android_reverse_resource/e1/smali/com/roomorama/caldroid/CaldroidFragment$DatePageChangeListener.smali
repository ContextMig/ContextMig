.class public Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;
.super Ljava/lang/Object;
.source "CaldroidFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roomorama/caldroid/CaldroidFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DatePageChangeListener"
.end annotation


# instance fields
.field private caldroidGridAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roomorama/caldroid/CaldroidGridAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private currentDateTime:Lhirondelle/date4j/DateTime;

.field private currentPage:I

.field final synthetic this$0:Lcom/roomorama/caldroid/CaldroidFragment;


# direct methods
.method public constructor <init>(Lcom/roomorama/caldroid/CaldroidFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/roomorama/caldroid/CaldroidFragment;

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->this$0:Lcom/roomorama/caldroid/CaldroidFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1450
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->currentPage:I

    return-void
.end method

.method private getNext(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1502
    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private getPrevious(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1512
    add-int/lit8 v0, p1, 0x3

    rem-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public getCaldroidGridAdapters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roomorama/caldroid/CaldroidGridAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->caldroidGridAdapters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCurrent(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1522
    rem-int/lit8 v0, p1, 0x4

    return v0
.end method

.method public getCurrentDateTime()Lhirondelle/date4j/DateTime;
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 1460
    iget v0, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->currentPage:I

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1527
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 1531
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1592
    invoke-virtual {p0, p1}, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->refreshAdapters(I)V

    .line 1595
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->this$0:Lcom/roomorama/caldroid/CaldroidFragment;

    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    invoke-virtual {v1, v2}, Lcom/roomorama/caldroid/CaldroidFragment;->setCalendarDateTime(Lhirondelle/date4j/DateTime;)V

    .line 1598
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->caldroidGridAdapters:Ljava/util/ArrayList;

    rem-int/lit8 v2, p1, 0x4

    .line 1599
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roomorama/caldroid/CaldroidGridAdapter;

    .line 1602
    .local v0, "currentAdapter":Lcom/roomorama/caldroid/CaldroidGridAdapter;
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->this$0:Lcom/roomorama/caldroid/CaldroidFragment;

    iget-object v1, v1, Lcom/roomorama/caldroid/CaldroidFragment;->dateInMonthsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1603
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->this$0:Lcom/roomorama/caldroid/CaldroidFragment;

    iget-object v1, v1, Lcom/roomorama/caldroid/CaldroidFragment;->dateInMonthsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->getDatetimeList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1604
    return-void
.end method

.method public refreshAdapters(I)V
    .locals 14
    .param p1, "position"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1535
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->caldroidGridAdapters:Ljava/util/ArrayList;

    .line 1536
    invoke-virtual {p0, p1}, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->getCurrent(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/roomorama/caldroid/CaldroidGridAdapter;

    .line 1537
    .local v9, "currentAdapter":Lcom/roomorama/caldroid/CaldroidGridAdapter;
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->caldroidGridAdapters:Ljava/util/ArrayList;

    .line 1538
    invoke-direct {p0, p1}, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->getPrevious(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/roomorama/caldroid/CaldroidGridAdapter;

    .line 1539
    .local v11, "prevAdapter":Lcom/roomorama/caldroid/CaldroidGridAdapter;
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->caldroidGridAdapters:Ljava/util/ArrayList;

    .line 1540
    invoke-direct {p0, p1}, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->getNext(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/roomorama/caldroid/CaldroidGridAdapter;

    .line 1542
    .local v10, "nextAdapter":Lcom/roomorama/caldroid/CaldroidGridAdapter;
    iget v0, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->currentPage:I

    if-ne p1, v0, :cond_0

    .line 1545
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    invoke-virtual {v9, v0}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->setAdapterDateTime(Lhirondelle/date4j/DateTime;)V

    .line 1546
    invoke-virtual {v9}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->notifyDataSetChanged()V

    .line 1549
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1550
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    .line 1549
    invoke-virtual/range {v0 .. v8}, Lhirondelle/date4j/DateTime;->minus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->setAdapterDateTime(Lhirondelle/date4j/DateTime;)V

    .line 1551
    invoke-virtual {v11}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->notifyDataSetChanged()V

    .line 1554
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1555
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    .line 1554
    invoke-virtual/range {v0 .. v8}, Lhirondelle/date4j/DateTime;->plus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->setAdapterDateTime(Lhirondelle/date4j/DateTime;)V

    .line 1556
    invoke-virtual {v10}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->notifyDataSetChanged()V

    .line 1584
    :goto_0
    iput p1, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->currentPage:I

    .line 1585
    return-void

    .line 1560
    :cond_0
    iget v0, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->currentPage:I

    if-le p1, v0, :cond_1

    .line 1562
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    invoke-virtual/range {v0 .. v8}, Lhirondelle/date4j/DateTime;->plus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    .line 1566
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1567
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    .line 1566
    invoke-virtual/range {v0 .. v8}, Lhirondelle/date4j/DateTime;->plus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->setAdapterDateTime(Lhirondelle/date4j/DateTime;)V

    .line 1568
    invoke-virtual {v10}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1574
    :cond_1
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    invoke-virtual/range {v0 .. v8}, Lhirondelle/date4j/DateTime;->minus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    .line 1578
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1579
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    .line 1578
    invoke-virtual/range {v0 .. v8}, Lhirondelle/date4j/DateTime;->minus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->setAdapterDateTime(Lhirondelle/date4j/DateTime;)V

    .line 1580
    invoke-virtual {v11}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public setCaldroidGridAdapters(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roomorama/caldroid/CaldroidGridAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1492
    .local p1, "caldroidGridAdapters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/roomorama/caldroid/CaldroidGridAdapter;>;"
    iput-object p1, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->caldroidGridAdapters:Ljava/util/ArrayList;

    .line 1493
    return-void
.end method

.method public setCurrentDateTime(Lhirondelle/date4j/DateTime;)V
    .locals 2
    .param p1, "dateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    .line 1477
    iput-object p1, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    .line 1478
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->this$0:Lcom/roomorama/caldroid/CaldroidFragment;

    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->currentDateTime:Lhirondelle/date4j/DateTime;

    invoke-virtual {v0, v1}, Lcom/roomorama/caldroid/CaldroidFragment;->setCalendarDateTime(Lhirondelle/date4j/DateTime;)V

    .line 1479
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0
    .param p1, "currentPage"    # I

    .prologue
    .line 1464
    iput p1, p0, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->currentPage:I

    .line 1465
    return-void
.end method
