.class Lcom/android/settings_ex/notification/ServiceListing$1;
.super Landroid/database/ContentObserver;
.source "ServiceListing.java"


# instance fields
.field final synthetic ako:Lcom/android/settings_ex/notification/ServiceListing;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ServiceListing;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/settings_ex/notification/ServiceListing$1;->ako:Lcom/android/settings_ex/notification/ServiceListing;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/notification/ServiceListing$1;->ako:Lcom/android/settings_ex/notification/ServiceListing;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ServiceListing;->sA()Ljava/util/List;

    .line 193
    return-void
.end method