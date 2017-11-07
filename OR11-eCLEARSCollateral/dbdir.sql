select * from logical_directory where logical_name like 'Collateral%';

delete from logical_directory where logical_name like 'Collateral%';

insert into logical_directory values ('CollateralDeposit_local', '/u01/share/razor/gateway/inbound/coll_dep/queue');
insert into logical_directory values ('CollateralDeposit_ext', '/u01/share/razor_ext/gateway/inbound/coll_dep/queue');
insert into logical_directory values ('CollateralDeposit_drc', '/u01/share/razor_drc/gateway/inbound/coll_dep/queue');
insert into logical_directory values ('CollateralDeposit_whatif', '/u01/share/razor_whatif/gateway/inbound/coll_dep/queue');
insert into logical_directory values ('CollateralBuyW_local', '/u01/share/razor/gateway/inbound/coll_buyw/queue');
insert into logical_directory values ('CollateralBuyW_ext', '/u01/share/razor_ext/gateway/inbound/coll_buyw/queue');
insert into logical_directory values ('CollateralBuyW_drc', '/u01/share/razor_drc/gateway/inbound/coll_buyw/queue');
insert into logical_directory values ('CollateralBuyW_whatif', '/u01/share/razor_whatif/gateway/inbound/coll_buyw/queue');
insert into logical_directory values ('CollateralWithdrawal_local', '/u01/share/razor/gateway/inbound/coll_with/queue');
insert into logical_directory values ('CollateralWithdrawal_ext', '/u01/share/razor_ext/gateway/inbound/coll_with/queue');
insert into logical_directory values ('CollateralWithdrawal_drc', '/u01/share/razor_drc/gateway/inbound/coll_with/queue');
insert into logical_directory values ('CollateralWithdrawal_whatif', '/u01/share/razor_whatif/gateway/inbound/coll_with/queue');
