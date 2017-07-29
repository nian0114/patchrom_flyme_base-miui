.class Lcom/android/settings_ex/toggleposition/g;
.super Ljava/lang/Object;
.source "FixedDividerSortableListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic ass:Lcom/android/settings_ex/toggleposition/FixedDividerSortableListView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/toggleposition/FixedDividerSortableListView;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings_ex/toggleposition/g;->ass:Lcom/android/settings_ex/toggleposition/FixedDividerSortableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/toggleposition/g;->ass:Lcom/android/settings_ex/toggleposition/FixedDividerSortableListView;

    invoke-static {v0, p2}, Lcom/android/settings_ex/toggleposition/FixedDividerSortableListView;->a(Lcom/android/settings_ex/toggleposition/FixedDividerSortableListView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
