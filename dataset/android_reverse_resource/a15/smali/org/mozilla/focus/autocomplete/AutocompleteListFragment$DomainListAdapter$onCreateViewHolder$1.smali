.class final Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$onCreateViewHolder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AutocompleteListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$onCreateViewHolder$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$onCreateViewHolder$1;

    invoke-direct {v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$onCreateViewHolder$1;-><init>()V

    sput-object v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$onCreateViewHolder$1;->INSTANCE:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$onCreateViewHolder$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$onCreateViewHolder$1;->invoke(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "it"    # Ljava/lang/String;

    .prologue
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    sget-object v0, Lorg/mozilla/focus/autocomplete/AutocompleteDomainFormatter;->INSTANCE:Lorg/mozilla/focus/autocomplete/AutocompleteDomainFormatter;

    invoke-virtual {v0, p1}, Lorg/mozilla/focus/autocomplete/AutocompleteDomainFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
